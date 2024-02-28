import 'dart:developer';

import 'package:leilao63_app/core/auth/repository/auth_repository.dart';
import 'package:leilao63_app/core/models/register_user_model.dart';
import 'package:leilao63_app/core/pages/register/presenter/register_presenter.dart';
import 'package:leilao63_app/core/pages/register/view/register_view.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  final AuthRepository authRepository;
  late final RegisterView _view;

  RegisterPresenterImpl({required this.authRepository});

  @override
  Future<void> register(
      {required String email,
      required String name,
      required double phone,
      required String password}) async {
    final registerUserModel = RegisterUserModel(
      email: email,
      name: name,
      phone: phone,
      password: password,
    );

    try {
      await authRepository.register(registerUserModel);
      _view.registerSuccess();
    } catch (e, s) {
      log('Error ao cadastrar usuário', error: e, stackTrace: s);
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}
