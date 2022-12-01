import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  static final RegExp _firstPasswordRegExp = RegExp(
    r'/^(?!\s*$).+/',
  );

  @override
  PasswordValidationError? validator(String? value) {
    return value!.isEmpty
        ? PasswordValidationError.invalid
        : !_firstPasswordRegExp.hasMatch(value)
            ? null
            : PasswordValidationError.invalid;
  }
}
