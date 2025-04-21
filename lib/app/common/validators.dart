/// Abstract class of email validator.
abstract class EmailValidator {
  /// validates the email value
  static String? validate(String? email) {
    if (email == null || email.isEmpty) return 'Enter an email';
    final value = email.trim();
    final regExp = RegExp(
      r"^[Aa-z-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    if (regExp.hasMatch(value)) {
      return null;
    }

    return 'Invalid email';
  }
}

/// Abstract class of code validator.
abstract class CodeValidator {
  /// validates the email value
  static String? validate(String? code) {
    if (code == null || code.isEmpty) return 'Enter a code';
    final regExp = RegExp(r'^\d{6}$');
    if (regExp.hasMatch(code)) {
      return null;
    }

    return 'Invalid code';
  }
}
