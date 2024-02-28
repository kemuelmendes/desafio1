import 'package:flutter/material.dart';
import 'package:leilao63_app/core/pages/splash/view/splash_view_impl.dart';

import '../login/login_page.dart';
import '../../dependencies/dependencies.dart';
import 'presenter/splash_presenter.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;

  const SplashPage({super.key, required this.presenter});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
  var _scale = 10.0;
  var _animationOpacityLogo = 0.0;

  double get _logoAnimationWidth => 236 * _scale;
  double get _logoAnimationHeight => 120 * _scale;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Dependencies.init();
      setState(
        () {
          _animationOpacityLogo = 1.0;
          _scale = 1;
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 320,
              ),
              Center(
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                  opacity: _animationOpacityLogo,
                  onEnd: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        PageRouteBuilder(
                          settings: const RouteSettings(name: '/auth/login'),
                          pageBuilder: (
                            context,
                            animation,
                            secondaryAnimation,
                          ) {
                            return const LoginPage();
                          },
                          transitionsBuilder: (_, animation, __, child) {
                            return FadeTransition(
                                opacity: animation, child: child);
                          },
                        ),
                        (route) => false);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: _logoAnimationWidth,
                    height: _logoAnimationHeight,
                    curve: Curves.linearToEaseOut,
                    child: Image.asset(
                      'assets/images/logo_splash.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 210,
              ),
              const Center(
                child: Text(
                  'Leilões online para rematar',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text(
                  'seu gado com paraticidade',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CircularProgressIndicator(
                color: Colors.white,
                backgroundColor: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 18,
              ),
              Image.asset(
                'assets/images/Logo-dix_branca.png',
                fit: BoxFit.cover,
              ),
              const Center(
                child: Text(
                  'V 2001',
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
