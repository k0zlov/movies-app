part of 'error_cubit.dart';

@immutable
class ErrorState {
  const ErrorState({
    this.failures = const {},
  });

  final Map<Timer, Failure> failures;

  ErrorState copyWith({
    Map<Timer, Failure>? failures,
  }) {
    return ErrorState(
      failures: failures ?? this.failures,
    );
  }
}
