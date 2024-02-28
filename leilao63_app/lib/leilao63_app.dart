import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';
import 'package:leilao63_app/core/pages/home/home_page.dart';
import 'package:leilao63_app/core/auth/restClient/rest_client.dart';
import 'package:leilao63_app/core/pages/register/client_register.dart';
import 'package:leilao63_app/core/pages/register/register_router.dart';
import 'package:leilao63_app/core/pages/splash/presenter/splash_route.dart';
import 'package:leilao63_app/core/ui/theme/leilao63_theme.dart';
import 'package:leilao63_app/core/ui/widgets/leilao63_loader.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:leilao63_app/core/auth/repository/auth_repository.dart';
import 'core/auth/repository/auth_repository_impl.dart';
import 'core/pages/login/login_page.dart';

class Leilao63App extends StatelessWidget {
  const Leilao63App({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const Leilao63Loader(),
      builder: (asyncNavigatorObserver) {
        return FlutterGetItApplicationBinding(
          bindingsBuilder: () => [
            Bind.lazySingleton((i) => RestClient()),
            Bind.lazySingleton<AuthRepository>(
                (i) => AuthRepositoryImpl(dio: i()))
          ],
          child: MaterialApp(
            title: 'Leilão63',
            theme: Leilao63Theme.themeData,
            navigatorObservers: [asyncNavigatorObserver],
            routes: {
              '/': (_) => SplashRoute(),
              '/auth/login': (_) => const LoginPage(),
              '/auth/register': (_) => RegisterRouter(),
              '/home': (_) => const HomePage(),
            },
          ),
        );
      },
    );
  }
}
