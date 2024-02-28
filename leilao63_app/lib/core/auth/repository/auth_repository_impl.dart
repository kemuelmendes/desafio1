import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:leilao63_app/core/exceptions/repository_exceptions.dart';
import 'package:leilao63_app/core/exceptions/unauthourized_exxception.dart';
import 'package:leilao63_app/core/models/register_user_model.dart';
import '../restClient/rest_client.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final RestClient dio;

  AuthRepositoryImpl({required this.dio});

  @override
  Future<String> login(
      {required String email, required String password}) async {
    try {
      final result = await dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });

      final accessToken = result.data['access_tokes'];
      if (accessToken == null) {
        throw UnauthourizedExxception();
      }

      return accessToken;
    } on DioException catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      if (e.response?.statusCode == 401) {
        throw UnauthourizedExxception();
      }
      throw RepositoryExceptions(message: 'Erro ao realizar login');
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth.post('/auth/users', data: registerModel.toMap());
    } on Exception catch (e, s) {
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      throw RepositoryExceptions(message: 'Erro ao registrar usuário');
    }
  }
}
