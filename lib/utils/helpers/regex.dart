class Regex {
  static RegExp email = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static RegExp password =
      RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$");
  static RegExp name = RegExp(r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$");
  static RegExp phone = RegExp(r"^[0-9]{10}$");
  static RegExp otp = RegExp(r"^[0-9]{6}$");
  static RegExp pincode = RegExp(r"^[0-9]{6}$");

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email không được để trống';
    }
    if (!email.hasMatch(value)) {
      return 'Email không hợp lệ';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mật khẩu không được để trống';
    }
    if (!password.hasMatch(value)) {
      return 'Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ hoa, chữ thường và số';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Tên không được để trống';
    }
    if (!name.hasMatch(value)) {
      return 'Tên không hợp lệ';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Số điện thoại không được để trống';
    }
    if (!phone.hasMatch(value)) {
      return 'Số điện thoại không hợp lệ';
    }
    return null;
  }

  static String? validateOTP(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mã OTP không được để trống';
    }
    if (!otp.hasMatch(value)) {
      return 'Mã OTP không hợp lệ';
    }
    return null;
  }

  static String? validatePincode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mã PIN không được để trống';
    }
    if (!pincode.hasMatch(value)) {
      return 'Mã PIN không hợp lệ';
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'Mật khẩu không được để trống';
    }
    if (value != password) {
      return 'Mật khẩu không khớp';
    }
    return null;
  }
}
