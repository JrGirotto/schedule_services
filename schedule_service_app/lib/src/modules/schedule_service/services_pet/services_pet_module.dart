import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/services_pet/services_pet_page.dart';

class HomeModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/services-pet';

  @override
  Map<String, WidgetBuilder> get pages =>
      {'/': (context) => const ServicesPetPage()};
}
