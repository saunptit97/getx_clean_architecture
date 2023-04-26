import 'package:base/di/di.dart';
import 'package:base/domain/usecases/auth_usecase.dart';
import 'package:base_getx/controller/base_controller.dart';

class SignInController extends BaseController {
  final AuthLoginUseCase _authLoginUseCase = getIt<AuthLoginUseCase>();
}
