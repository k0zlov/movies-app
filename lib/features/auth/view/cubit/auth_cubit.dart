import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/services/error_service.dart';
import 'package:movies_app/features/auth/domain/use_cases/check_email_use_case/check_email_use_case.dart';
import 'package:movies_app/features/auth/domain/use_cases/register_use_case/register_use_case.dart';
import 'package:movies_app/features/auth/view/widgets/auth_text_field_suffix.dart';
import 'package:movies_app/utils/input_validator/input_validator.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.errorService,
    required this.registerUseCase,
    required this.checkEmailUseCase,
  }) : super(const AuthState());

  AuthState _state = const AuthState();

  final ErrorService errorService;

  final RegisterUseCase registerUseCase;
  final CheckEmailUseCase checkEmailUseCase;

  void onEmailChanged(String text) {
    if (text == _state.email) return;
    emit(_state = _state.copyWith(email: text));

    _checkEmail();
  }

  void onRegisterPassChanged(String text) {
    if (text == _state.registerPassword) return;
    emit(_state = _state.copyWith(registerPassword: text));

    _checkPassword();
  }

  void onRepeatPassChanged(String text) {
    if (text == _state.repeatPassword) return;
    emit(_state = _state.copyWith(repeatPassword: text));

    _checkRepeatPassword();
  }

  void onLoginPassChanged(String text) {
    if (text == _state.loginPassword) return;
    emit(_state = _state.copyWith(loginPassword: text));
  }

  void onNameChanged(String text) {
    if (text == _state.name) return;
    emit(_state = _state.copyWith(name: text));
  }

  void _checkRepeatPassword() {
    final String repeatPass = _state.repeatPassword;

    if (repeatPass.isEmpty) {
      _state = _state.copyWith(
        repeatPassFieldMessage: '',
        repeatPassFieldState: AuthTextFieldSuffixState.empty,
      );
      emit(_state);
      return;
    }

    if (_state.registerPassword == repeatPass) {
      _state = _state.copyWith(
        repeatPassFieldMessage: 'Passwords match',
        repeatPassFieldState: AuthTextFieldSuffixState.success,
      );
    } else {
      _state = _state.copyWith(
        repeatPassFieldMessage: "Passwords don't match",
        repeatPassFieldState: AuthTextFieldSuffixState.error,
      );
    }

    emit(_state);
  }

  void _checkPassword() {
    final String password = _state.registerPassword;

    if (password.isEmpty) {
      _state = _state.copyWith(
        passFieldMessage: '',
        passFieldState: AuthTextFieldSuffixState.empty,
      );
      emit(_state);
      return;
    }

    final String? error = InputValidator.validatePassword(
      _state.registerPassword,
    );

    if (error == null) {
      _state = _state.copyWith(
        passFieldMessage: 'Correct password',
        passFieldState: AuthTextFieldSuffixState.success,
      );
    } else {
      _state = _state.copyWith(
        passFieldState: AuthTextFieldSuffixState.error,
        passFieldMessage: error,
      );
    }

    emit(_state);
  }

  Future<void> _checkEmail() async {
    final String email = _state.email;

    if (email.isEmpty) {
      _state = _state.copyWith(
        loginEmailFieldState: AuthTextFieldSuffixState.empty,
        loginEmailMessage: '',
        emailFieldState: AuthTextFieldSuffixState.empty,
        emailFieldMessage: '',
      );
      emit(_state);
      return;
    }

    await Future.delayed(const Duration(seconds: 1), () {});

    if (email != _state.email) return;

    if (!InputValidator.validateEmail(email)) {
      const message = 'Enter a valid email address';

      _state = _state.copyWith(
        loginEmailMessage: message,
        loginEmailFieldState: AuthTextFieldSuffixState.error,
        emailFieldState: AuthTextFieldSuffixState.error,
        emailFieldMessage: message,
      );
      emit(_state);
      return;
    }

    _state = _state.copyWith(
        emailFieldState: AuthTextFieldSuffixState.loading,
        loginEmailFieldState: AuthTextFieldSuffixState.loading);
    emit(_state);

    final failureOrBool = await checkEmailUseCase(
      CheckEmailParams(email: _state.email),
    );

    failureOrBool.fold(
      errorService.showFailure,
      (response) {
        _state = _state.copyWith(
          emailFieldMessage: response
              ? 'There is already account with this email'
              : 'Valid email',
          emailFieldState: response
              ? AuthTextFieldSuffixState.error
              : AuthTextFieldSuffixState.success,
          loginEmailMessage:
              response ? 'Valid email' : 'There is no account with such email',
          loginEmailFieldState: response
              ? AuthTextFieldSuffixState.success
              : AuthTextFieldSuffixState.error,
        );
      },
    );
    emit(_state);
  }
}
