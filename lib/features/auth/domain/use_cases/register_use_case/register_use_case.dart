import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/core/use_case/use_case.dart';
import 'package:movies_app/features/auth/domain/entities/user_entity/user_entity.dart';
import 'package:movies_app/features/auth/domain/repositories/auth_repository.dart';

part 'register_use_case.freezed.dart';

part 'register_use_case.g.dart';

class RegisterUseCase implements UseCase<UserEntity, RegisterParams> {
  const RegisterUseCase({
    required this.repository,
  });

  final AuthRepository repository;

  @override
  Future<Either<Failure, UserEntity>> call(RegisterParams params) {
    return repository.register(params);
  }
}

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String name,
    required String email,
    required String password,
  }) = _RegisterParams;

  const RegisterParams._();

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}
