import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'package:schedule_service_core/src/loader/schedule_service_loader.dart';
import 'package:schedule_service_core/src/theme/schedule_service_theme.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

class ScheduleServiceCoreConfig extends StatelessWidget {
  const ScheduleServiceCoreConfig({
    Key? key,
    this.binding,
    this.pages,
    this.pagesBuilders,
    this.modules,
    required this.title,
    this.didStart,
  }) : super(key: key);

  final ApplicationBindings? binding;
  final List<FlutterGetItPageRouter>? pages;
  final List<FlutterGetItPageBuilder>? pagesBuilders;
  final List<FlutterGetItModule>? modules;
  final String title;
  final VoidCallback? didStart;

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      debugMode: kDebugMode,
      bindings: binding,
      pages: [...pages ?? [], ...pagesBuilders ?? []],
      modules: modules,
      builder: (context, routes, flutterGetItNavObserver) {
        return AsyncStateBuilder(
          loader: ScheduleServiceLoader(),
          builder: (navigatorObserver) {
            if (didStart != null) {
              didStart!();
            }
            return MaterialApp(
              localizationsDelegates: const [
                //AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('pt', ''), // Português
              ],
              debugShowCheckedModeBanner: false,
              theme: ScheduleServiceTheme.lightTheme,
              darkTheme: ScheduleServiceTheme.darkTheme,
              navigatorObservers: [navigatorObserver, flutterGetItNavObserver],
              routes: routes,
              title: title,
            );
          },
        );
      },
    );
  }
}
