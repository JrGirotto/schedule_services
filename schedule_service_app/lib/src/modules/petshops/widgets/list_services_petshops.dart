import 'package:flutter/material.dart';
import 'package:schedule_service_app/src/modules/petshops/widgets/confirm_services.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class ListServicesPetshops extends StatelessWidget {
  const ListServicesPetshops({
    super.key,
    required this.namePetshop,
    required this.priceService,
    required this.logoPetshop,
    required this.scheduleDay,
    required this.scheduleHour,
  });

  final String namePetshop;
  final String priceService;
  final String logoPetshop;
  final String scheduleDay;
  final String scheduleHour;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: sizeOf.width * .9,
      decoration: BoxDecoration(
        color: ScheduleServiceTheme.blueColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white),
      ),
      child: Card(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            radius: 34,
            backgroundImage: NetworkImage(
              logoPetshop,
            ),
          ),
          title: Text(
            namePetshop,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ScheduleServiceTheme.orangeColor,
            ),
          ),
          subtitle: Text(
            priceService,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ScheduleServiceTheme.blueColor),
          ),
          trailing: Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 0, 4),
            child: Column(
              children: [
                Text(
                  scheduleDay,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ScheduleServiceTheme.blueColor),
                ),
                Text(
                  scheduleHour,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ScheduleServiceTheme.orangeColor),
                ),
              ],
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const ConfirmServices();
              },
            );
          },
        ),
      ),
    );
  }
}
