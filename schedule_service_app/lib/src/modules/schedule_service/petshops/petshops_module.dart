import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/petshops/petshops_page.dart';

class PetshopsModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/petshops';

  @override
  Map<String, WidgetBuilder> get pages =>
      {'/': (context) => const PetshopsPage()};
}
