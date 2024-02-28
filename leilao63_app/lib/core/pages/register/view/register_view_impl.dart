import 'package:flutter/widgets.dart';
import 'package:leilao63_app/core/pages/register/client_register.dart';
import 'package:leilao63_app/core/ui/helpers.dart';

import 'register_view.dart';

abstract class RegisterViewImpl extends State<ClientRegister>
    with Messages<ClientRegister>
    implements RegisterView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void registerError([String? message]) {
    showError(message ?? 'Erro ao registrar usuário');
  }

  @override
  void registerSuccess() {
    showSucces('Usuário cadastrado com sucesso');
    Navigator.of(context).pop();
  }
}
