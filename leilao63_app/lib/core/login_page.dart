import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:leilao63_app/core/ui/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                        padding: EdgeInsets.only(left: 48, right: 48, top: 35),
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
                          left: 48,
                          right: 48,
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
                        height: 25,
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
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text('E-mail'),
                            hintText: 'E-mail',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(
                              color: Colors.black,
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
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text('Senha'),
                            hintText: 'Senha',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Criar Conta',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// PARA UPAR NO GIT