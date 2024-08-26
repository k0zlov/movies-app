import 'package:flutter/cupertino.dart';

/// Abstract class defining a failure.
@immutable
abstract class Failure {
  /// Constructs a [Failure] with the provided [errorMessage].
  Failure({
    required this.errorMessage,
  }) : _uniqueId = UniqueKey().hashCode;

  final int _uniqueId;

  /// The error message associated with the failure.
  final String errorMessage;

  @override
  String toString() {
    return 'Failure{errorMessage: $errorMessage}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Failure &&
          runtimeType == other.runtimeType &&
          _uniqueId == other._uniqueId &&
          errorMessage == other.errorMessage;

  @override
  int get hashCode => _uniqueId.hashCode ^ errorMessage.hashCode;
}

/// A failure representing a server error.
class ServerFailure extends Failure {
  /// Constructs a [ServerFailure] with the provided [errorMessage].
  ServerFailure({
    required super.errorMessage,
  });

  @override
  String toString() {
    return 'ServerFailure{errorMessage: ${super.errorMessage}}';
  }
}

/// A failure representing a cache error.
class CacheFailure extends Failure {
  /// Constructs a [CacheFailure] with the provided [errorMessage].
  CacheFailure({required super.errorMessage});

  @override
  String toString() {
    return 'CacheFailure{errorMessage: ${super.errorMessage}';
  }
}
