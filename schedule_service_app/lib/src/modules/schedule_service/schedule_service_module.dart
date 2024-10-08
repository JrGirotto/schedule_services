import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/cart/cart_page.dart';
import 'package:schedule_service_app/src/modules/schedule_service/checkout/checkout_page.dart';
import 'package:schedule_service_app/src/modules/schedule_service/petshops/confirm_services/confirm_services_page.dart';
import 'package:schedule_service_app/src/modules/schedule_service/petshops/petshops_page.dart';
import 'package:schedule_service_app/src/modules/schedule_service/schedule_service_controller.dart';
import 'package:schedule_service_app/src/modules/schedule_service/schedule_service_page.dart';
import 'package:schedule_service_app/src/modules/schedule_service/services_pet/services_pet_page.dart';

import 'user_pet/user_pet_page.dart';

class ScheduleServiceModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton(
          (i) => ScheduleServiceController(),
        )
      ];

  @override
  String get moduleRouteName => '/schedule-service';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => const ScheduleServicePage(),
        '/user-pet': (context) => const UserPetPage(),
        '/services-pet': (context) => const ServicesPetPage(),
        '/petshops': (context) => const PetshopsPage(),
        '/petshops/confirm': (context) => const ConfirmServicesPage(),
        '/cart': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
      };
}
