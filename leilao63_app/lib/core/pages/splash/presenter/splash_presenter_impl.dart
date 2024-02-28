import 'package:leilao63_app/core/pages/splash/presenter/splash_presenter.dart';
import 'package:leilao63_app/core/pages/splash/view/splash_view.dart';
import 'package:leilao63_app/core/ui/widgets/leilao63_loader.dart';

late final SplashView _view;

class SplashPresenterImpl implements SplashPresenter {
  @override
  Future<void> checkLogin() async {
    const Leilao63Loader();
    await Future.delayed(const Duration(seconds: 2));
    _view.logged(true);
  }

  @override
  set view(view) => _view = view;
}
