import 'package:leilao63_app/core/mvp/leilao63_presenter.dart';
import 'package:leilao63_app/core/pages/register/view/register_view.dart';

abstract class RegisterPresenter extends Leilao63Presenter<RegisterView> {
  Future<void> register({
    required String email,
    required String name,
    required double phone,
    required String password,
  });
}
