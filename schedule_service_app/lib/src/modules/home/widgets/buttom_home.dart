import 'package:flutter/material.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class ButtomHome extends StatelessWidget {
  const ButtomHome({
    super.key,
    required this.buttonService,
    required this.buttonSubtitle,
    required this.titleColor,
    required this.subTitleColor,
  });

  final String buttonService;
  final String buttonSubtitle;
  final Color titleColor;
  final Color subTitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ScheduleServiceTheme.blueColor),
      ),
      child: Card(
        child: InkWell(
          child: ListTile(
            //titleAlignment: ListTileTitleAlignment.center,
            title: Text(
              buttonService,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: titleColor,
              ),
            ),
            subtitle: Text(
              buttonSubtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: subTitleColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
