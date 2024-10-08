import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/schedule_service_controller.dart';
import 'package:schedule_service_app/src/modules/schedule_service/services_pet/widgets/buttom_home.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class ServicesPetPage extends StatelessWidget {
  const ServicesPetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: ScheduleServiceTheme.orangeColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Olá Meg  🐶 ❤',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ScheduleServiceTheme.blueColor,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(top: 10),
              color: Colors.transparent,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                  border: Border.all(
                    color: ScheduleServiceTheme.blueColor,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Escolha o Serviço Pet:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ScheduleServiceTheme.orangeColor),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(25),
                        width: sizeOf.width * .9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: ScheduleServiceTheme.orangeColor,
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/bg_pet.jpg"),
                            opacity: 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  Injector.get<ScheduleServiceController>().goToPetshops(),
                              child: const ButtomHome(
                                buttonService: 'B A N H O',
                                titleColor: ScheduleServiceTheme.blueColor,
                                buttonSubtitle: 'Seu Pet sempre limpinho!',
                                subTitleColor: ScheduleServiceTheme.orangeColor,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const ButtomHome(
                              buttonService: 'T O S A',
                              titleColor: ScheduleServiceTheme.blueColor,
                              buttonSubtitle: 'Seu Pet sempre no estilo!',
                              subTitleColor: ScheduleServiceTheme.orangeColor,
                            ),
                            const SizedBox(height: 20),
                            const ButtomHome(
                              buttonService: 'BANHO+TOSA',
                              titleColor: ScheduleServiceTheme.blueColor,
                              buttonSubtitle: 'Seu Pet sempre completo!',
                              subTitleColor: ScheduleServiceTheme.orangeColor,
                            ),
                            const SizedBox(height: 20),
                            const ButtomHome(
                              buttonService: 'CONSULTA',
                              titleColor: ScheduleServiceTheme.orangeColor,
                              buttonSubtitle: 'Seu Pet sempre Saudável!',
                              subTitleColor: ScheduleServiceTheme.blueColor,
                            ),
                            const SizedBox(height: 20),
                            const ButtomHome(
                              buttonService: 'VACINAS',
                              titleColor: ScheduleServiceTheme.orangeColor,
                              buttonSubtitle: 'Seu Pet sempre Protegido!',
                              subTitleColor: ScheduleServiceTheme.blueColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // TODO: Só aparece se tiver agendamento(s). *** Criar um página só pra isso? ***
                    const SizedBox(height: 30),
                    /*const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Seus Serviços Agendados:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ScheduleServiceTheme.blueColor,
                        ),
                      ),
                    ), */
                  ],
                ),
              ),
            ),
            /* const ListServicesSchedulled(
              avatarPet:
                  'https://www.petz.com.br/blog/wp-content/uploads/2023/02/perfil-de-cachorro.jpg',
              namePet: 'Meg',
              typeService: 'Banho',
              scheduledService: '15/04 - 15:00',
            ), */
          ],
        ),
      ),
    );
  }
}
