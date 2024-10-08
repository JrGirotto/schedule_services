import 'package:flutter/material.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class AddServices extends StatelessWidget {
  const AddServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(
          strokeAlign: 1.0,
          color: ScheduleServiceTheme.orangeColor,
        ),
      ),
      height: 150,
      width: 150,
    );
  }
}
