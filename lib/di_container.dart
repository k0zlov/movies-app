import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:movies_app/core/services/error_service.dart';
import 'package:movies_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:movies_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:movies_app/features/auth/domain/use_cases/check_email_use_case/check_email_use_case.dart';
import 'package:movies_app/features/auth/domain/use_cases/register_use_case/register_use_case.dart';
import 'package:movies_app/features/auth/view/cubit/auth_cubit.dart';
import 'package:movies_app/features/errors/view/cubit/error_cubit.dart';

/// Singleton instance of GetIt for dependency injection.
///
/// Enables the application to access shared instances of classes,
/// facilitating a loosely coupled architecture by providing a centralized
/// point of access for dependencies.
final GetIt getIt = GetIt.instance;

/// Initializes and registers the application's dependencies asynchronously.
Future<void> registerDependencies() async {
  _repositories();
  _useCases();
  _services();
  _cubits();
}

void _repositories() {
  getIt.registerLazySingleton<AuthRepository>(AuthRepositoryImpl.new);
}

void _useCases() {
  getIt
    ..registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(repository: getIt()),
    )
    ..registerLazySingleton(
      () => CheckEmailUseCase(repository: getIt()),
    );
}

void _services() {
  getIt.registerLazySingleton<ErrorService>(ErrorServiceImpl.new);
}

void _cubits() {
  getIt
    ..registerLazySingleton<ErrorCubit>(
      () => ErrorCubit(errorService: getIt()),
    )
    ..registerLazySingleton(
      () => AuthCubit(
        errorService: getIt(),
        registerUseCase: getIt(),
        checkEmailUseCase: getIt(),
      ),
    );
}
