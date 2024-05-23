import 'package:flutter/material.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class ListServicesSchedulled extends StatelessWidget {
  const ListServicesSchedulled(
      {super.key,
      required this.namePet,
      required this.typeService,
      required this.avatarPet,
      required this.scheduledService});

  final String namePet;
  final String typeService;
  final String avatarPet;
  final String scheduledService;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: sizeOf.width * .8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white),
      ),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              avatarPet,
            ),
          ),
          title: Text(
            namePet,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: ScheduleServiceTheme.orangeColor,
            ),
          ),
          subtitle: Text(
            typeService,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ScheduleServiceTheme.blueColor),
          ),
          trailing: Text(
            scheduledService,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: ScheduleServiceTheme.blueColor),
          ),
          onTap: () {
            debugPrint('Aqui o tutor já seleciona o serviço desejado');
          },
        ),
      ),
    );
  }
}
