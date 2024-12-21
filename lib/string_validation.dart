extension StringValidation on String? {
  //For verify Mobile Number

  bool isPhoneNumber() {
    return isDigit() && this?.length == 11;
  }

  bool isDigit() {
    return this?.codeUnits.every(
              (element) => element >= 48 && element <= 57,
            ) ??
        false;
  }

//Email

  bool isValidEmail() {
    if (this == null || this!.isEmpty) return false;

    // Regular expression for email validation
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
      caseSensitive: false,
    );

    // Additional detailed checks
    return emailRegex.hasMatch(this!) &&
        _hasValidLocalPart() &&
        _hasValidDomain();
  }

  bool _hasValidLocalPart() {
    // Ensures local part (before @) meets additional criteria
    if (this == null) return false;

    // Split email into local part and domain
    final parts = this!.split('@');
    if (parts.length != 2) return false;

    final localPart = parts[0];

    // Check local part length
    return localPart.isNotEmpty &&
        localPart.length <= 64 &&
        // Prevent consecutive dots
        !localPart.contains('..') &&
        // Prevent starting or ending with a dot
        !localPart.startsWith('.') &&
        !localPart.endsWith('.');
  }

  bool _hasValidDomain() {
    // Ensures domain meets additional criteria
    if (this == null) return false;

    final parts = this!.split('@');
    if (parts.length != 2) return false;

    final domain = parts[1];

    // Check domain length and structure
    return domain.length >= 3 &&
        domain.length <= 255 &&
        domain.contains('.') &&
        // Prevent consecutive dots in domain
        !domain.contains('..') &&
        // Ensure top-level domain is at least 2 characters
        domain.split('.').last.length >= 2;
  }

//Empty TextField

  bool isEmptyTextField(String? value) {
    return isEmpty(value);
  }

  bool isEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return true;
    }
    return false;
  }

  bool isShirtSize() {
    return hasUppercaseLetters() && this!.length <= 2;
  }

  bool hasUppercaseLetters() {
    return this?.codeUnits.every(
              (element) => element >= 65 && element <= 90,
            ) ??
        false;
  }

  ///Password

  bool isValidPassword() {
    return isPasswordFormat() && this!.length >= 8;
  }

  bool isPasswordFormat() {
    final regExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$');
    return regExp.hasMatch(this ?? '');
  }

  ///Id card

  bool isValidIdCard() {
    return isIdCardFormat() && this?.length == 15;
  }

  bool isIdCardFormat() {
    RegExp regExp = RegExp(r'^\d{5}-\d{7}-\d{1}$');
    return regExp.hasMatch(this ?? '');
  }

//Date
  bool isValidDate(String? value) {
    return isDateFormat(value);
  }

  bool isDateFormat(String? value) {
    RegExp regExp = RegExp(r'^\d{2}/\d{2}/\d{4}$');
    return regExp.hasMatch(value!);
  }

  //Payment
  bool isValidPaymentFormat() {
    return isPaymentRegExp();
  }

  bool isPaymentRegExp() {
    RegExp regExp = RegExp(r'^\d+\.\d+$');
    return regExp.hasMatch(this ?? '');
  }
}
