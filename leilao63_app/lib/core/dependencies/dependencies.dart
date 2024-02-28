import 'package:get_it/get_it.dart';

import '../auth/restClient/rest_client.dart';
import '../pages/login/login_controller.dart';

class Dependencies {
  static void init() {
    final getIt = GetIt.I;

    getIt.registerSingleton<RestClient>(RestClient());
    getIt.registerSingleton<LoginController>(
        LoginController(restClient: getIt.get()));
  }
}
