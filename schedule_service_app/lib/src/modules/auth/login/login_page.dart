import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:schedule_service_app/src/modules/auth/login/login_controller.dart';
import 'package:schedule_service_core/schedule_service_core.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with MessageViewMixin {
  final formKey = GlobalKey<FormState>();

  final emailEC = TextEditingController();
  final passwordlEC = TextEditingController();
  final controller = Injector.get<LoginController>();

  @override
  void initState() {
    messageListener(controller);
    effect(() {
      if (controller.logged) {
        Navigator.of(context).pushReplacementNamed('/home');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    emailEC.dispose();
    passwordlEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/background_pet.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: ScheduleServiceTheme.lightOrangeColor.withOpacity(0.9),
        body: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset('assets/images/logo_banhopet.png',
                height: MediaQuery.of(context).size.height * 0.2),
            const SizedBox(height: 40),
            Center(
              child: Container(
                padding: const EdgeInsets.all(40),
                constraints: BoxConstraints(maxWidth: sizeOf.width * .8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: ScheduleServiceTheme.orangeColor),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const Text(
                        'Login',
                        style: ScheduleServiceTheme.titleStyle,
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        controller: emailEC,
                        validator: Validatorless.multiple([
                          Validatorless.required('Email obrigatório'),
                          Validatorless.email('Email inválido')
                        ]),
                        decoration: const InputDecoration(
                          label: Text('Email'),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Watch(
                        (_) {
                          return TextFormField(
                            controller: passwordlEC,
                            obscureText: controller.obscurePassword,
                            validator:
                                Validatorless.required('Senha obrigatória'),
                            decoration: InputDecoration(
                                label: const Text('Senha'),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.passwordToggle();
                                  },
                                  icon: controller.obscurePassword
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off),
                                )),
                          );
                        },
                      ),
                      const SizedBox(height: 32),
                      SizedBox(
                        width: sizeOf.width * .8,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            //TODO: Desabilitado para testes de tela
                            // final valid =
                            //     formKey.currentState?.validate() ?? false;
                            // if (valid) {
                            //   controller.login(emailEC.text, passwordlEC.text);
                            // }
                            Navigator.of(context).pushNamed('/user-pet');
                          },
                          child: const Text('ENTRAR'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
