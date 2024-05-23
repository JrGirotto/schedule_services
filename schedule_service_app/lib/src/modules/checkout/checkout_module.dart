import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/checkout/checkout_page.dart';

class CheckoutModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/checkout';

  @override
  Map<String, WidgetBuilder> get pages =>
      {'/': (context) => const CheckoutPage()};
}
