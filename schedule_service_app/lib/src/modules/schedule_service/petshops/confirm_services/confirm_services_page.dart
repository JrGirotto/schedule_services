import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/petshops/widgets/list_services_petshops.dart';
import 'package:schedule_service_app/src/modules/schedule_service/schedule_service_controller.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class ConfirmServicesPage extends StatefulWidget {
  const ConfirmServicesPage({super.key});

  @override
  State<ConfirmServicesPage> createState() => _ConfirmServicesState();
}

class _ConfirmServicesState extends State<ConfirmServicesPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Injector.get<ScheduleServiceController>();


    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Card(
            elevation: 10, // adds a shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Banho - Meg',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ScheduleServiceTheme.orangeColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Confirma Agendamento?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ScheduleServiceTheme.blueColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ListServicesPetshops(
                    namePetshop: 'Reino Animal',
                    priceService: 'R\$ 45,00',
                    logoPetshop:
                        "https://www.shutterstock.com/shutterstock/photos/1053368123/display_1500/stock-vector-pet-shop-logo-template-1053368123.jpg",
                    scheduleDay: '16/05',
                    scheduleHour: '12:40',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.goToCart();
                          },
                          child: const Text('Confirmar'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              ScheduleServiceTheme.orangeColor),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Voltar'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
