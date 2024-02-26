import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';
import 'package:leilao63_app/core/ui/leilao63_theme.dart';
import 'package:leilao63_app/core/ui/widgets/leilao63_loader.dart';

import 'core/features/auth/login/login_page.dart';
import 'core/features/splash/splash_page.dart';

class Leilao63App extends StatelessWidget {
  const Leilao63App({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const Leilao63Loader(),
      builder: (asyncNavigatorObserver) {
        return MaterialApp(
          title: 'Leilão63',
          theme: Leilao63Theme.themeData,
          navigatorObservers: [asyncNavigatorObserver],
          routes: {
            '/': (_) => const SplashPage(),
            '/auth/login': (_) => const LoginPage()
          },
        );
      },
    );
  }
}
