import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:movies_app/core/services/error_service.dart';
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
  _services();
  _cubits();
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
      () => AuthCubit(errorService: getIt()),
    );
}
