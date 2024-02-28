import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:leilao63_app/core/pages/login/login_controller.dart';
import 'package:leilao63_app/core/ui/constants.dart';
import 'package:leilao63_app/core/ui/helpers.dart';

import '../register/register_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with Messages<LoginPage> {
  final emailTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  void onLogin() async {
    final String? message = await GetIt.I
        .get<LoginController>()
        .login(emailTEC.text, passwordTEC.text);

    if (message != null) {
      showError(message);
    } else {
      if (context.mounted) {
        Navigator.of(context).pushNamed('/home');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      const Padding(
                        padding: EdgeInsets.only(left: 35, right: 35, top: 10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: FontConstants.fontFamily,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 35,
                          right: 35,
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Informe os dados para acessar',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: FontConstants.fontFamily,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 25, bottom: 5),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'E-mail',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: FontConstants.fontFamily,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34, right: 34),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .85,
                          height: 48,
                          child: TextFormField(
                            controller: emailTEC,
                            decoration: const InputDecoration(
                              labelText: 'E-mail',
                              hintText: 'E-mail',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 25, bottom: 5),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Senha',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: FontConstants.fontFamily,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34, right: 34),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .85,
                          height: 48,
                          child: TextFormField(
                            controller: passwordTEC,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Senha',
                              hintText: 'Senha',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 35, top: 5),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(color: ColorsConstants.brown),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34, right: 34),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 48),
                          ),
                          onPressed: onLogin,
                          child: const Text('Entrar'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34, right: 34),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            minimumSize: const Size(double.infinity, 48),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterRouter()),
                            );
                          },
                          child: const Text(
                            'Criar Conta',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'assets/images/Logo-dix_branca.png',
                        fit: BoxFit.cover,
                      ),
                      const Center(
                        child: Text(
                          'V 2001',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
