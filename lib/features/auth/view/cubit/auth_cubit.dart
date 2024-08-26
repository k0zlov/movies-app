import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/core/services/error_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.errorService,
  }) : super(const AuthState());

  AuthState _state = const AuthState();

  final ErrorService errorService;

  void test() {
    errorService.showFailure(
      ServerFailure(
        errorMessage: 'Testing error service ${Random().nextInt(100)}',
      ),
    );
  }
}
