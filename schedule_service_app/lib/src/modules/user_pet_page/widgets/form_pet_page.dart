import 'package:flutter/material.dart';
import 'package:schedule_service_core/schedule_service_core.dart';
import 'package:validatorless/validatorless.dart';

class FormPetPage extends StatefulWidget {
  const FormPetPage({super.key});

  @override
  State<FormPetPage> createState() => _FormPetPageState();
}

class _FormPetPageState extends State<FormPetPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final namePetEC = TextEditingController();
  final emailPetEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Expanded(
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Container(
              //margin: const EdgeInsets.only(top: 6),
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
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: nameEC,
                    validator: Validatorless.required('Nome obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Nome Completo-Tutor(a)'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: namePetEC,
                    validator: Validatorless.required('Nome Pet obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Email do Tutor(a)'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: ScheduleServiceTheme.orangeColor,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: nameEC,
                    validator:
                        Validatorless.required('Nome do Pet obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Nome do Pet'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: nameEC,
                    validator: Validatorless.required('Nome obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Tipo do Pet'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: namePetEC,
                    validator: Validatorless.required('Nome Pet obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Raça do Pet'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: namePetEC,
                    validator: Validatorless.required('Nome Pet obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Idade do Pet'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: namePetEC,
                    validator: Validatorless.required('Nome Pet obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Porte do Pet'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: namePetEC,
                    validator: Validatorless.required('Nome Pet obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Porte do Pet'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: namePetEC,
                    validator: Validatorless.required('Nome Pet obrigatório'),
                    decoration: const InputDecoration(
                      label: Text('Porte do Pet'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
