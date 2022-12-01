import 'package:firebase_auth/firebase_auth.dart';

import '../models/models.dart';

class GenericException implements Exception {
  final dynamic exception;
  GenericException({required this.exception});

  @override
  String toString() {
    return 'GenericException: {exception: $exception}';
  }

  ExceptionModel getError() {
    String? message;
    Map<String, dynamic>? errors;

    if (exception is FirebaseAuthException) {
      final firebaseAuthException = exception as FirebaseAuthException;
      message = firebaseAuthException.message;
    } else {
      message = exception;
    }
    return ExceptionModel(message: message, errors: errors);
  }
}
