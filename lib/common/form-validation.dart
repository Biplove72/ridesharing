class FormValidator {
  static String? validatePhoneNumber(String? val) {
    if (val == null) {
      return "Phone field cannot be empty";
    } else if (val.isEmpty) {
      return "Phone field cannot be empty";
    } else if (val.length != 10) {
      return "Please enter valid phone number";
    } else {
      return null;
    }
  }

  static String? validateFieldNotEmpty(String? val, String fieldName) {
    if (val == null) {
      return "$fieldName field cannot be empty";
    } else if (val.isEmpty) {
      return "$fieldName field cannot be empty";
    } else {
      return null;
    }
  }

  static String? validateFirstNameAndLastName(String? val, String fieldName) {
    if (val == null) {
      return "$fieldName field cannot be empty";
    } else if (val.isEmpty) {
      return "$fieldName field cannot be empty";
    } else if (val.isNotEmpty) {
      List<String> individualData = val.split(" ");
      if (individualData.length > 1) {
        return null;
      } else {
        return "$fieldName is not valid.";
      }
    }
    return null;
  }

  static String? validateFieldWithRegex({
    required String? value,
    required String fieldName,
    required String regex,
  }) {
    if (value == null) {
      return "$fieldName field cannot be empty";
    } else if (value.isEmpty) {
      return "$fieldName field cannot be empty";
    } else if (RegExp(regex).hasMatch(value)) {
      return null;
    } else {
      return "Invalid $fieldName";
    }
  }
}
