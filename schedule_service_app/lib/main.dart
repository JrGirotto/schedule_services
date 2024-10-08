import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/schedule_service_module.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

import 'package:schedule_service_app/src/pages/splash_page/splash_page.dart';

import 'src/binding/schedule_service_application_binding.dart';
import 'src/modules/auth/auth_module.dart';
import 'src/modules/schedule_service/services_pet/services_pet_module.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const ScheduleServiceApp());
  }, (error, stack) {
    log('Erro não tratado', error: error, stackTrace: stack);
    throw error;
  });
}

class ScheduleServiceApp extends StatelessWidget {
  const ScheduleServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScheduleServiceCoreConfig(
      title: 'BanhoPet - User',
      binding: ScheduleServiceApplicationBinding(),
      pagesBuilders: [
        FlutterGetItPageBuilder(
          page: (_) => const SplashPage(),
          path: '/',
        ),
      ],
      modules: [
        AuthModule(),
        HomeModule(),
        ScheduleServiceModule(),
      ],
    );
  }
}
