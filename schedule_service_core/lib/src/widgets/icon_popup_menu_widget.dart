import 'package:flutter/material.dart';

import '../../schedule_service_core.dart';

class IconPopupMenuWidget extends StatelessWidget {
  const IconPopupMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 64),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ScheduleServiceTheme.orangeColor, width: 2),
        ),
        child: const Icon(
          Icons.more_horiz_rounded,
          color: ScheduleServiceTheme.orangeColor,
        ),
      ),
    );
  }
}
