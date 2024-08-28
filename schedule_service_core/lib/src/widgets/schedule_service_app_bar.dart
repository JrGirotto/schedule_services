import 'package:flutter/material.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class ScheduleServiceAppBar extends AppBar {
  ScheduleServiceAppBar({super.key, List<Widget>? actions})
      : super(
            //toolbarHeight: 70,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.50),
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                ),
              ]),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Banho',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ScheduleServiceTheme.blueColor,
                  ),
                ),
              ),
            ),
            actions: actions);
}
