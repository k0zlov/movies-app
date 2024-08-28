import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/features/auth/domain/entities/user_entity/user_entity.dart';
import 'package:movies_app/features/auth/domain/use_cases/check_email_use_case/check_email_use_case.dart';
import 'package:movies_app/features/auth/domain/use_cases/register_use_case/register_use_case.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, UserEntity>> register(RegisterParams params);

  Future<Either<Failure, bool>> checkEmail(CheckEmailParams params);
}
