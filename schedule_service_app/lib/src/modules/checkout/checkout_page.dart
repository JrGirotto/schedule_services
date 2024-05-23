import 'package:flutter/material.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

import '../petshops/widgets/list_services_petshops.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: ScheduleServiceTheme.blueColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Quase Tudo Pronto!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: ScheduleServiceTheme.orangeColor,
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
                  ),
                  border: Border.all(
                    color: ScheduleServiceTheme.blueColor,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Serviço Escolhido: ',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: ScheduleServiceTheme.orangeColor),
                        ),
                        Text(
                          'Banho',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: ScheduleServiceTheme.blueColor),
                        ),
                      ],
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
                                  Navigator.of(context).pushNamed('/petshops'),
                              child: const ListServicesPetshops(
                                namePetshop: 'Reino Animal',
                                priceService: 'R\$ 45,00',
                                logoPetshop:
                                    "https://www.shutterstock.com/shutterstock/photos/1053368123/display_1500/stock-vector-pet-shop-logo-template-1053368123.jpg",
                                scheduleDay: '16/05',
                                scheduleHour: '12:40',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Adicionar mais Serviços:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ScheduleServiceTheme.blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: ScheduleServiceTheme.blueColor,
                          backgroundColor: ScheduleServiceTheme.orangeColor),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Finalizar Pagamento',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
