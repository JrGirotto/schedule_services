import 'package:flutter/material.dart';
import 'package:schedule_service_app/src/modules/schedule_service/cart/widgets/add_services.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

import '../petshops/widgets/list_services_petshops.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.remove_shopping_cart_sharp,
              color: ScheduleServiceTheme.blueColor,
            ),
            onPressed: () {
              //TODO: Limpar carrinho? Ou melhor colocar opção de deletar pelo onLongPress individual no serviço?
            },
          )
        ],
        centerTitle: true,
        title: const Text(
          'Petshop Reino Animal',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: ScheduleServiceTheme.orangeColor,
          ),
        ),
      ),
      backgroundColor: ScheduleServiceTheme.blueColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
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
                          'Serviços Selecionados: ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ScheduleServiceTheme.blueColor),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(10),
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
                        child: const SingleChildScrollView(
                          child: Column(
                            children: [
                              ListServicesPetshops(
                                namePetshop: 'Banho',
                                priceService: 'R\$ 45,00',
                                logoPetshop:
                                    "https://www.shutterstock.com/shutterstock/photos/1053368123/display_1500/stock-vector-pet-shop-logo-template-1053368123.jpg",
                                scheduleDay: '16/05',
                                scheduleHour: '12:40',
                              ),
                              ListServicesPetshops(
                                namePetshop: 'Vacina - Raiva',
                                priceService: 'R\$ 123,00',
                                logoPetshop:
                                    "https://www.shutterstock.com/shutterstock/photos/1053368123/display_1500/stock-vector-pet-shop-logo-template-1053368123.jpg",
                                scheduleDay: '16/05',
                                scheduleHour: '12:40',
                              ),
                              ListServicesPetshops(
                                namePetshop: 'Escovação Dentes',
                                priceService: 'R\$ 23,00',
                                logoPetshop:
                                    "https://www.shutterstock.com/shutterstock/photos/1053368123/display_1500/stock-vector-pet-shop-logo-template-1053368123.jpg",
                                scheduleDay: '16/05',
                                scheduleHour: '12:40',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Adicionar Serviços:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ScheduleServiceTheme.blueColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AddServices(),
                    SizedBox(width: 14),
                    AddServices(),
                    SizedBox(width: 14),
                    AddServices(),
                    SizedBox(width: 14),
                    AddServices(),
                    SizedBox(width: 14),
                    AddServices(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(4),
                height: 80,
                width: sizeOf.width * 9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Image.asset('assets/images/logo_mastercard.png'),
                  title: const Text(
                    'Crédito',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('**** **** **** 3987'),
                  trailing: const Text(
                    'Trocar',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(6),
                height: 80,
                width: sizeOf.width * 8,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Text(
                            'Total: R\$',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ScheduleServiceTheme.orangeColor),
                          ),
                          Text(
                            '169,00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: ScheduleServiceTheme.blueColor,
                            backgroundColor: ScheduleServiceTheme.orangeColor),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/checkout');
                        },
                        child: const Text(
                          'Finalizar Pagamento',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
