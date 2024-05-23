import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/home/home_page.dart';

class HomeModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/home';

  @override
  Map<String, WidgetBuilder> get pages => {'/': (context) => const HomePage()};
}
