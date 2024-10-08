import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/schedule_service_controller.dart';
import 'package:schedule_service_core/schedule_service_core.dart';
import 'package:signals_flutter/signals_flutter.dart';

class ScheduleServicePage extends StatefulWidget {
  const ScheduleServicePage({super.key});

  @override
  State<ScheduleServicePage> createState() => _ScheduleServicePageState();
}

class _ScheduleServicePageState extends State<ScheduleServicePage>
    with MessageViewMixin {
  final controller = Injector.get<ScheduleServiceController>();

  @override
  void initState() {
    messageListener(controller);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.startProcess();
      effect(() {
        var baseRoute = '/schedule-service/';
        final step = controller.step;

        switch (step) {
          case FormSteps.none:
            return;
          case FormSteps.userPet:
            baseRoute += 'user-pet';
          case FormSteps.servicesPet:
            baseRoute += 'services-pet';
          case FormSteps.petshops:
            baseRoute += 'petshops';
          case FormSteps.cart:
            baseRoute += 'cart';
          case FormSteps.checkout:
            baseRoute += 'checkout';
          case FormSteps.restart:
            // Navigator.of(context)
            //     .popUntil(ModalRoute.withName('/schedule-service'));
            // controller.startProcess();
            return;
        }
        Navigator.of(context).pushNamed(baseRoute);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: ScheduleServiceTheme.blueColor,
        ),
      ),
    );
  }
}
