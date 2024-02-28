import 'package:flutter/material.dart';
import 'package:leilao63_app/core/pages/register/view/register_view_impl.dart';
import 'package:leilao63_app/core/ui/helpers.dart';
import 'package:leilao63_app/leilao63_app.dart';
import 'package:validatorless/validatorless.dart';

import '../../ui/constants.dart';
import 'presenter/register_presenter.dart';

class ClientRegister extends StatefulWidget {
  final RegisterPresenter presenter;

  const ClientRegister({super.key, required this.presenter});

  @override
  State<ClientRegister> createState() => _ClientRegisterState();
}

class _ClientRegisterState extends RegisterViewImpl
    with Messages<ClientRegister> {
  final formKey = GlobalKey<FormState>();
  final emailTEC = TextEditingController();
  final nameTEC = TextEditingController();
  final phoneTEC = TextEditingController();
  final passwordTEC = TextEditingController();
  final confirmPasswordTEC = TextEditingController();

  @override
  void dispose() {
    emailTEC.dispose();
    nameTEC.dispose();
    phoneTEC.dispose();
    passwordTEC.dispose();
    confirmPasswordTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConstants.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Center(
            child: Text(
              'Criar Conta',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 35, right: 35, top: 25, bottom: 5),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Nome Completo',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontConstants.fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 34),
                      child: SizedBox(
                        height: 48,
                        child: TextFormField(
                          controller: nameTEC,
                          decoration: const InputDecoration(
                            labelText: 'Nome Completo',
                            hintText: 'Nome Completo',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          validator: Validatorless.required('Obrigatório'),
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
                              color: Colors.black,
                              fontFamily: FontConstants.fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 34),
                      child: SizedBox(
                        height: 48,
                        child: TextFormField(
                          controller: emailTEC,
                          decoration: const InputDecoration(
                            labelText: 'E-mail',
                            hintText: 'E-mail',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          validator: Validatorless.multiple([
                            Validatorless.required('Obrigatório'),
                            Validatorless.email('E-mail inválido'),
                          ]),
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
                          'Celular',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontConstants.fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 34),
                      child: SizedBox(
                        height: 48,
                        child: TextFormField(
                          controller: phoneTEC,
                          decoration: const InputDecoration(
                            labelText: 'Celular',
                            hintText: 'Celular',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          validator: Validatorless.required('Obrigatório'),
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
                          'Senha',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontConstants.fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 34),
                      child: SizedBox(
                        height: 48,
                        child: TextFormField(
                          controller: passwordTEC,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Senha',
                            hintText: 'Senha',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          validator: Validatorless.multiple([
                            Validatorless.required('Obrigatório'),
                            Validatorless.min(
                                6, 'Senha deve conter pelo menos 6 caracters'),
                          ]),
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
                          'Confirmar Senha',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontConstants.fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 34),
                      child: SizedBox(
                        height: 48,
                        child: TextFormField(
                          controller: confirmPasswordTEC,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Confirmar Senha',
                            hintText: 'Confirmar Senha',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          validator: Validatorless.multiple([
                            Validatorless.required('Obrigatório'),
                            Validatorless.min(
                                6, 'Senha deve conter pelo menos 6 caracteres'),
                            Validatorless.compare(passwordTEC,
                                'Senha diferente de confirma senha')
                          ]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    const Text('Ao criar sua conta você concorda com os'),
                    const SizedBox(height: 0.5),
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text('Termos de Uso e Politica de Privacidade'),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 34),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 48),
                                backgroundColor:
                                    const Color.fromARGB(255, 80, 212, 84)),
                            onPressed: () {
                              final formValid =
                                  formKey.currentState?.validate() ?? false;

                              if (formValid) {
                                const Leilao63App();
                                String phoneString = phoneTEC.text;

                                double phoneDouble = double.parse(phoneString);

                                widget.presenter.register(
                                  email: emailTEC.text,
                                  name: nameTEC.text,
                                  phone: phoneDouble,
                                  password: passwordTEC.text,
                                );
                              }
                              showSucces('AEEEEEEE CARAI');
                            },
                            child: const Text('Entrar')),
                      ),
                    ),
                  ],
                ),
              ),
            ]))
          ],
        ));
  }
}


// METODO PARA CRIAR CONTA E NAO ESQUECER DO POP-UP N LEMBRO DA BIBLIOTECA