import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/core/use_case/use_case.dart';
import 'package:movies_app/features/auth/domain/repositories/auth_repository.dart';

part 'check_email_use_case.freezed.dart';

part 'check_email_use_case.g.dart';

class CheckEmailUseCase implements UseCase<bool, CheckEmailParams> {
  const CheckEmailUseCase({
    required this.repository,
  });

  final AuthRepository repository;

  @override
  Future<Either<Failure, bool>> call(CheckEmailParams params) {
    return repository.checkEmail(params);
  }
}

@freezed
class CheckEmailParams with _$CheckEmailParams {
  const factory CheckEmailParams({
    required String email,
  }) = _CheckEmailParams;

  const CheckEmailParams._();

  factory CheckEmailParams.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailParamsFromJson(json);
}
