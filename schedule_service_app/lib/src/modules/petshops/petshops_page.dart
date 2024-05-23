import 'package:flutter/material.dart';
import 'package:schedule_service_app/src/modules/petshops/widgets/list_services_petshops.dart';
import 'package:schedule_service_core/schedule_service_core.dart';

class PetshopsPage extends StatefulWidget {
  const PetshopsPage({super.key});

  @override
  State<PetshopsPage> createState() => _PetshopsPageState();
}

class _PetshopsPageState extends State<PetshopsPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final namePetEC = TextEditingController();
  final emailPetEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Banho',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: ScheduleServiceTheme.blueColor,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.schedule,
              color: ScheduleServiceTheme.orangeColor,
            ),
            onPressed: () {
              showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2025));
              //TODO: Filtra a listagem com opções + próximas a partir da data escolhida
              //Obs.: Analisar necessidade da filtragem por horário
              //Obs2.: Analisar Performance/Custo-Benefício a filtragem tb por: Petshop e Preço
            },
          )
        ],
      ),
      backgroundColor: ScheduleServiceTheme.blueColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ListServicesPetshops(
              logoPetshop:
                  "https://www.shutterstock.com/shutterstock/photos/1053368123/display_1500/stock-vector-pet-shop-logo-template-1053368123.jpg",
              namePetshop: "Reino Animal",
              priceService: "R\$ 34,90",
              // TODO: Aqui a intenção é já mostrar a data/horário mais próximo disponivel, com um intervalo de 1 hora para o tempo para chegar ao Petshop.
              scheduleDay: "16/05",
              scheduleHour: "12:30",
            );
          },
        ),
      ),
    );
  }
}
