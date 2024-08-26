import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/core/services/error_service.dart';

part 'error_state.dart';

class ErrorCubit extends Cubit<ErrorState> {
  ErrorCubit({
    required this.errorService,
  }) : super(const ErrorState()) {
    errorService.getFailureStream.listen(errorsListener);
  }

  ErrorState _state = const ErrorState();

  final ErrorService errorService;

  void errorsListener(Failure failure) {
    late Timer timer;

    timer = Timer(const Duration(seconds: 10), () {
      removeFailure(timer);
    });

    final updatedFailureTimers = Map<Timer, Failure>.from(state.failures)
      ..[timer] = failure;

    _state = _state.copyWith(
      failures: updatedFailureTimers,
    );

    emit(_state);
  }

  void removeFailure(Timer timer) {
    final updatedFailureTimers = Map<Timer, Failure>.from(state.failures)
      ..remove(timer);

    timer.cancel();

    _state = _state.copyWith(
      failures: updatedFailureTimers,
    );

    emit(_state);
  }

  @override
  Future<void> close() {
    state.failures.keys.forEach((timer) => timer.cancel());
    return super.close();
  }
}
