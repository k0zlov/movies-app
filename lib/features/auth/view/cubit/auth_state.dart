part of 'auth_cubit.dart';

@immutable
class AuthState {
  const AuthState({
    this.name = '',
    this.email = '',
    this.loginPassword = '',
    this.registerPassword = '',
    this.repeatPassword = '',
    this.loginEmailFieldState = AuthTextFieldSuffixState.empty,
    this.loginEmailMessage = '',
    this.emailFieldState = AuthTextFieldSuffixState.empty,
    this.passFieldState = AuthTextFieldSuffixState.empty,
    this.repeatPassFieldState = AuthTextFieldSuffixState.empty,
    this.emailFieldMessage = '',
    this.passFieldMessage = '',
    this.repeatPassFieldMessage = '',
  });

  final String name;

  final String email;

  final String loginPassword;

  final String registerPassword;
  final String repeatPassword;

  final AuthTextFieldSuffixState loginEmailFieldState;
  final String loginEmailMessage;

  final AuthTextFieldSuffixState emailFieldState;
  final AuthTextFieldSuffixState passFieldState;
  final AuthTextFieldSuffixState repeatPassFieldState;

  final String emailFieldMessage;
  final String passFieldMessage;
  final String repeatPassFieldMessage;

  AuthState copyWith({
    String? name,
    String? email,
    String? loginPassword,
    String? registerPassword,
    String? repeatPassword,
    AuthTextFieldSuffixState? loginEmailFieldState,
    String? loginEmailMessage,
    AuthTextFieldSuffixState? emailFieldState,
    AuthTextFieldSuffixState? passFieldState,
    AuthTextFieldSuffixState? repeatPassFieldState,
    String? emailFieldMessage,
    String? passFieldMessage,
    String? repeatPassFieldMessage,
  }) {
    return AuthState(
      name: name ?? this.name,
      email: email ?? this.email,
      loginPassword: loginPassword ?? this.loginPassword,
      registerPassword: registerPassword ?? this.registerPassword,
      repeatPassword: repeatPassword ?? this.repeatPassword,
      loginEmailFieldState: loginEmailFieldState ?? this.loginEmailFieldState,
      loginEmailMessage: loginEmailMessage ?? this.loginEmailMessage,
      emailFieldState: emailFieldState ?? this.emailFieldState,
      passFieldState: passFieldState ?? this.passFieldState,
      repeatPassFieldState: repeatPassFieldState ?? this.repeatPassFieldState,
      emailFieldMessage: emailFieldMessage ?? this.emailFieldMessage,
      passFieldMessage: passFieldMessage ?? this.passFieldMessage,
      repeatPassFieldMessage:
          repeatPassFieldMessage ?? this.repeatPassFieldMessage,
    );
  }
}
