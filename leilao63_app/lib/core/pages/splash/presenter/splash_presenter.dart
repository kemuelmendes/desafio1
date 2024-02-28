import 'package:leilao63_app/core/mvp/leilao63_presenter.dart';

abstract class SplashPresenter extends Leilao63Presenter {
  Future<void> checkLogin();
}
