class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String? get password => _password;

  set password(String? newPassword) {
    _password = newPassword;
  }

  bool isValid() {
    final pwd = _password ?? "";

    if (pwd.length < 8 || pwd.length > 16) {
      return false;
    }

    final hasUppercase = pwd.contains(RegExp(r'[A-Z]'));
    final hasLowercase = pwd.contains(RegExp(r'[a-z]'));
    final hasNumber = pwd.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: ${_password ?? ""}";
  }
}