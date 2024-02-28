import 'package:leilao63_app/core/auth/repository/auth_repository.dart';
import 'package:leilao63_app/core/exceptions/repository_exceptions.dart';
import 'package:leilao63_app/core/exceptions/unauthourized_exxception.dart';
import 'package:leilao63_app/core/local/auth_local_service.dart';
import 'package:leilao63_app/core/ui/widgets/leilao63_loader.dart';

class LoginController {
  final AuthRepository authRepository;

  LoginController({
    required this.authRepository,
  });

  Future<String?> login(String email, String password) async {
    const Leilao63Loader();

    try {
      final token =
          await authRepository.login(email: email, password: password);

      await AuthLocalService.setToken(token);

      return null;
    } on UnauthourizedExxception catch (e) {
      return 'Email ou senha incorreto';
    } on RepositoryExceptions catch (e) {
      return e.message;
    } catch (e) {
      return "Desculpe algo deu errado. Por favor tente novamente mais tarde";
    } finally {
      const Leilao63Loader();
    }
  }
}
