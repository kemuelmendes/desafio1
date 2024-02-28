import 'package:flutter/widgets.dart';
import 'package:leilao63_app/core/pages/splash/splash_page.dart';
import 'package:leilao63_app/core/pages/splash/view/splash_view.dart';
import 'package:leilao63_app/core/ui/widgets/leilao63_loader.dart';

abstract class SplashViewImpl extends State<SplashPage> implements SplashView {
  @override
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  void logged(bool isLogged) {
    Leilao63Loader();
    if (isLogged) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/auth/login', (route) => false);
    }
  }
}
