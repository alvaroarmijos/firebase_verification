/// Abstract class of email validator.
abstract class EmailValidator {
  /// validates the email value
  static String? validate(String? email) {
    if (email == null || email.isEmpty) return 'Ingrese un email';
    final value = email.trim();
    final regExp = RegExp(
      r"^[Aa-z-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    if (regExp.hasMatch(value)) {
      return null;
    }

    return 'Email no válido';
  }
}
