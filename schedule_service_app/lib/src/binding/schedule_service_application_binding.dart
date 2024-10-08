import 'package:schedule_service_core/schedule_service_core.dart';
import 'package:schedule_service_app/src/core/env.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ScheduleServiceApplicationBinding extends ApplicationBindings {
  @override
  List<Bind<Object>> bindings() => [
        Bind.lazySingleton(
          (i) => RestClient(Env.backendBaseUrl),
        ),
      ];
}
