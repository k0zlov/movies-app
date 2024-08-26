import 'dart:async';

import 'package:movies_app/core/errors/failure.dart';

abstract interface class ErrorService {
  void showFailure(Failure failure);

  Stream<Failure> get getFailureStream;
}

class ErrorServiceImpl implements ErrorService {
  final StreamController<Failure> failureStream = StreamController.broadcast();

  @override
  Stream<Failure> get getFailureStream => failureStream.stream;

  @override
  void showFailure(Failure failure) {
    failureStream.add(failure);
  }
}
