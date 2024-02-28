import 'package:get_it/get_it.dart';
import 'package:leilao63_app/core/auth/restClient/rest_client.dart';

final restClientDependecy = GetIt.I.registerSingleton<RestClient>(RestClient());
