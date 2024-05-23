import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/user_pet_page/user_pet_page.dart';

class UserPetModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/user-pet';

  @override
  Map<String, WidgetBuilder> get pages =>
      {'/': (context) => const UserPetPage()};
}
