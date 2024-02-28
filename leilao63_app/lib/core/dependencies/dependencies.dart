import 'package:get_it/get_it.dart';
import '../pages/login/login_controller.dart';

class Dependencies {
  static void init() {
    final getIt = GetIt.I;

    getIt.registerSingleton<LoginController>(
        LoginController(authRepository: getIt.get()));
  }
}
