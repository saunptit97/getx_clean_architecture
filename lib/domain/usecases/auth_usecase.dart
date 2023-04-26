import 'package:base/domain/repositories/auth_repository.dart';
import 'package:base_getx/base.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthLoginUseCase extends UseCase<dynamic, dynamic> {
  final AuthRepository authRepository;

  AuthLoginUseCase(this.authRepository);
  @override
  Future call(params) async {
    return null;
  }
}
