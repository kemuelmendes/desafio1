import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:leilao63_app/core/pages/register/client_register.dart';
import 'package:leilao63_app/core/pages/register/presenter/register_presenter.dart';
import 'package:leilao63_app/core/pages/register/presenter/register_presenter_impl.dart';

class RegisterRouter extends FlutterGetItPageRoute {
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<RegisterPresenter>(
            (i) => RegisterPresenterImpl(authRepository: i()))
      ];

  @override
  WidgetBuilder get page =>
      (context) => ClientRegister(presenter: context.get());
}
