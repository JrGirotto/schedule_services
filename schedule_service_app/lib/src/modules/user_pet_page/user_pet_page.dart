import 'package:flutter/material.dart';
import 'package:schedule_service_core/schedule_service_core.dart';
import 'package:validatorless/validatorless.dart';

class UserPetPage extends StatefulWidget {
  const UserPetPage({super.key});

  @override
  State<UserPetPage> createState() => _UserPetPageState();
}

class _UserPetPageState extends State<UserPetPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final namePetEC = TextEditingController();
  final emailPetEC = TextEditingController();

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
                'Bora Cadastrar?',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: ScheduleServiceTheme.orangeColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(top: 5),
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
                  image: const DecorationImage(
                    image: AssetImage("assets/images/bg_pet.jpg"),
                    //opacity: 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 26),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 6),
                        padding: const EdgeInsets.all(20),
                        width: sizeOf.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: ScheduleServiceTheme.orangeColor,
                          ),
                        ),
                        child: Column(
                          children: [
                            Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: nameEC,
                                    validator: Validatorless.required(
                                        'Nome obrigatório'),
                                    decoration: const InputDecoration(
                                      label: Text('Nome Completo do Tutor(a)'),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: namePetEC,
                                    validator: Validatorless.required(
                                        'Nome Pet obrigatório'),
                                    decoration: const InputDecoration(
                                      label: Text('Email do Tutor(a)'),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Divider(
                                    color: ScheduleServiceTheme.orangeColor,
                                  ),
                                  // const Align(
                                  //   alignment: Alignment.bottomLeft,
                                  //   child: Text(
                                  //     'Cadastro Pet',
                                  //     style: TextStyle(
                                  //       fontSize: 20,
                                  //       fontWeight: FontWeight.bold,
                                  //       color: ScheduleServiceTheme.blueColor,
                                  //     ),
                                  //   ),
                                  // ),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: nameEC,
                                    validator: Validatorless.required(
                                        'Nome do Pet obrigatório'),
                                    decoration: const InputDecoration(
                                      label: Text('Nome do Pet'),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: nameEC,
                                    validator: Validatorless.required(
                                        'Nome obrigatório'),
                                    decoration: const InputDecoration(
                                      label: Text('Tipo do Pet'),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: namePetEC,
                                    validator: Validatorless.required(
                                        'Nome Pet obrigatório'),
                                    decoration: const InputDecoration(
                                      label: Text('Raça do Pet'),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: namePetEC,
                                    validator: Validatorless.required(
                                        'Nome Pet obrigatório'),
                                    decoration: const InputDecoration(
                                      label: Text('Idade do Pet'),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: namePetEC,
                                    validator: Validatorless.required(
                                        'Nome Pet obrigatório'),
                                    decoration: const InputDecoration(
                                      label: Text('Porte do Pet'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 58,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          foregroundColor:
                                              ScheduleServiceTheme.orangeColor,
                                          backgroundColor:
                                              ScheduleServiceTheme.blueColor),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/home');
                                      },
                                      child: const Text(
                                        'CADASTRAR',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
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
