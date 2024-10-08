
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/services_pet/services_pet_page.dart';

class ServicesPetRouter extends FlutterGetItModulePageRouter {
  const ServicesPetRouter({super.key});

  @override
  WidgetBuilder get view => (_) => const ServicesPetPage();
  
}