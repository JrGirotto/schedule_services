import 'package:flutter/material.dart';

class ScheduleServiceAppBar extends AppBar {
  ScheduleServiceAppBar({super.key, List<Widget>? actions})
      : super(
            //toolbarHeight: 70,
            backgroundColor: Colors.transparent,
            // flexibleSpace: Container(
            //   alignment: Alignment.centerLeft,
            //   decoration: BoxDecoration(color: Colors.white, boxShadow: [
            //     BoxShadow(
            //       color: Colors.black.withOpacity(0.50),
            //       offset: const Offset(0, 1),
            //       blurRadius: 4,
            //     ),
            //   ]),
            // ),
            centerTitle: true,
            actions: actions);
}
