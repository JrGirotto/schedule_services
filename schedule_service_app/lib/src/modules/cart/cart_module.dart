import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/cart/cart_page.dart';

class CartModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/cart';

  @override
  Map<String, WidgetBuilder> get pages => {'/': (context) => const CartPage()};
}
