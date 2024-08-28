import 'package:flutter/material.dart';
import 'package:schedule_service_app/src/modules/user_pet_page/widgets/form_pet_page.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class UserPetPage extends StatelessWidget {
  const UserPetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScheduleServiceTheme.blueColor,
      // bottomSheet: Row(
      //   children: [
      //     Expanded(
      //       child: SizedBox(
      //         height: 58,
      //         child: ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //               foregroundColor: ScheduleServiceTheme.orangeColor,
      //               backgroundColor: ScheduleServiceTheme.blueColor),
      //           onPressed: () {
      //             Navigator.of(context).pushNamed('/home');
      //           },
      //           child: const Text(
      //             'CADASTRAR',
      //             style: TextStyle(
      //               fontSize: 18,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Column(children: [
        const SizedBox(height: 46),
        const Text(
          'Bora Cadastrar?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ScheduleServiceTheme.orangeColor,
          ),
        ),
        const FormPetPage(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: ScheduleServiceTheme.orangeColor,
              backgroundColor: ScheduleServiceTheme.blueColor),
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: const Text(
            'CADASTRAR',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]),
    );
  }
}
