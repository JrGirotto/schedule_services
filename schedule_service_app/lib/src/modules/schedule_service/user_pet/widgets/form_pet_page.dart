/* import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/schedule_service/schedule_service_controller.dart';
import 'package:schedule_service_core/schedule_service_core.dart';
import 'package:validatorless/validatorless.dart';

class FormPetPage extends StatefulWidget {
  const FormPetPage({super.key});

  @override
  State<FormPetPage> createState() => _FormPetPageState();
}

class _FormPetPageState extends State<FormPetPage> {
  final scheduleServiceController = Injector.get<ScheduleServiceController>();

  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailTutorEC = TextEditingController();
  final namePetEC = TextEditingController();
  final typePetEC = TextEditingController();
  final breedPetEC = TextEditingController();
  final datePetEC = TextEditingController();
  final sizePetEC = TextEditingController();
  final genderPetEC = TextEditingController();
  final colorPetEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    emailTutorEC.dispose();
    namePetEC.dispose();
    typePetEC.dispose();
    breedPetEC.dispose();
    datePetEC.dispose();
    sizePetEC.dispose();
    genderPetEC.dispose();
    colorPetEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Form(
      key: formKey,
      child: Center(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: nameEC,
              validator: Validatorless.required('Nome obrigatório'),
              decoration: const InputDecoration(
                label: Text(
                  'Nome',
                  style: TextStyle(
                    color: ScheduleServiceTheme.blueColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailTutorEC,
              validator: Validatorless.required('Email obrigatório'),
              decoration: const InputDecoration(
                label: Text(
                  'Email',
                  style: TextStyle(color: ScheduleServiceTheme.blueColor),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              color: ScheduleServiceTheme.orangeColor,
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: namePetEC,
              validator: Validatorless.required('Nome do Pet obrigatório'),
              decoration: const InputDecoration(
                label: Text('Nome do Pet'),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: typePetEC,
              validator: Validatorless.required('Tipo do Pet obrigatório'),
              decoration: const InputDecoration(
                label: Text('Tipo do Pet'),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: breedPetEC,
              validator: Validatorless.required('Raça do Pet obrigatório'),
              decoration: const InputDecoration(
                label: Text('Raça do Pet'),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.datetime,
              controller: datePetEC,
              validator:
                  Validatorless.required('Data Nasc. do Pet obrigatório'),
              decoration: const InputDecoration(
                label: Text('Data Nasc. do Pet'),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: sizePetEC,
              validator: Validatorless.required('Porte do Pet obrigatório'),
              decoration: const InputDecoration(
                label: Text('Porte do Pet'),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: genderPetEC,
              validator: Validatorless.required('Gênero do Pet obrigatório'),
              decoration: const InputDecoration(
                label: Text('Gênero do Pet'),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: colorPetEC,
              validator: Validatorless.required('Cor do Pet obrigatório'),
              decoration: const InputDecoration(
                label: Text('Cor do Pet'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: sizeOf.width * .9,
              height: 58,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: ScheduleServiceTheme.blueColor,
                    backgroundColor: ScheduleServiceTheme.orangeColor),
                onPressed: () {
                  final valid = formKey.currentState?.validate() ?? false;
                  if (valid) {
                    scheduleServiceController.setUserPetDataStepAndNext(
                      nameEC.text,
                      emailTutorEC.text,
                      namePetEC.text,
                      typePetEC.text,
                      breedPetEC.text,
                      datePetEC.text,
                      sizePetEC.text,
                      genderPetEC.text,
                      colorPetEC.text,
                    );
                  }
                },
                child: const Text(
                  'CADASTRAR',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
 */