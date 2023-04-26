import 'package:base/data/models/auth_model.dart';
import 'package:base/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<dynamic, AuthModel>> signIn({
    required Map<String, dynamic> body,
  }) async {
    return const Right(AuthModel(email: ""));
  }
}
