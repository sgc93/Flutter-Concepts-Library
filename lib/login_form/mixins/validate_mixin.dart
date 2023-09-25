mixin ValidateMixin {
  String? validateEmailField(String? value) {
    if (isEmpty(value)) {
      return 'Email can\'t be empty!';
    } else if (!isValid(value)) {
      return 'Enter correct email format!';
    } else {
      return null;
    }
  }

  bool isValid(String? value) {
    if (value!.contains('@')) {
      return true;
    } else {
      return false;
    }
  }

  String? validatePasswordField(String? value) {
    if (isEmpty(value)) {
      return 'Password can\'t be empty!';
    } else if (!hasLength(value)) {
      return 'Password length must be >= 6.';
    } else {
      return null;
    }
  }

  bool hasLength(String? value) {
    if (value!.length < 6) {
      return false;
    } else {
      return true;
    }
  }

  bool isEmpty(String? value) {
    if (value!.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
