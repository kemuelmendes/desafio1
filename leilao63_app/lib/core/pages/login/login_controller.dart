// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';

import '../../auth/restClient/rest_client.dart';

// TODO: Criar variaveis loading e error usando mobx

class LoginController {
  final RestClient restClient;
  LoginController({
    required this.restClient,
  });

  Future<void> login(String email, String password) async {
    try {
      final response = await restClient.post('/auth/login');
      print(response.data);
    } on DioException catch (e) {}
  }
}
