import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:leilao63_app/core/pages/splash/presenter/splash_presenter.dart';
import 'package:leilao63_app/core/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:leilao63_app/core/pages/splash/splash_page.dart';

class SplashRoute extends FlutterGetItPageRoute {
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton<SplashPresenter>((i) => SplashPresenterImpl())];

  @override
  WidgetBuilder get page => (context) => SplashPage(presenter: context.get());
}
