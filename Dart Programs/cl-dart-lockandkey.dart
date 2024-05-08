import 'dart:math';

class PasswordManager {
  /// Function to validate the strength of a password.
  ///
  /// Returns true if the password meets the criteria for being strong,
  /// otherwise returns false.
  bool validatePasswordStrength(String password) {
    // Criteria for a strong password: at least 8 characters,
    // containing at least one uppercase letter, one lowercase letter,
    // one digit, and one special character.
    RegExp strongRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*()_+}{":;\?/>.<,])(?=.{8,})');
    return strongRegex.hasMatch(password);
  }

  /// Function to generate a strong password.
  ///
  /// Returns a strong password string.
  String generateStrongPassword() {
    // Define character sets for password generation.
    String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
    String uppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String digitChars = '0123456789';
    String specialChars = '!@#\$%^&*()_+":;\'?/>.<,';

    // Combine all character sets.
    String allChars = lowercaseChars + uppercaseChars + digitChars + specialChars;

    // Shuffle characters to make the password more random.
    List<String> charsList = allChars.split('');
    charsList.shuffle();

    // Generate a password of length 12 with characters from the shuffled list.
    String password = charsList.take(12).join('');
    return password;
  }

  /// Function to generate an intermediate level password.
  ///
  /// Returns an intermediate level password string.
  String generateIntermediatePassword() {
    // Define character sets for password generation.
    String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
    String uppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String digitChars = '0123456789';

    // Combine lowercase, uppercase, and digit characters.
    String allChars = lowercaseChars + uppercaseChars + digitChars;

    // Shuffle characters to make the password more random.
    List<String> charsList = allChars.split('');
    charsList.shuffle();

    // Generate a password of length 10 with characters from the shuffled list.
    String password = charsList.take(10).join('');
    return password;
  }

  /// Function to generate a low level password.
  ///
  /// Returns a low level password string.
  String generateLowPassword() {
    // Define character sets for password generation.
    String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
    String digitChars = '0123456789';

    // Combine lowercase and digit characters.
    String allChars = lowercaseChars + digitChars;

    // Shuffle characters to make the password more random.
    List<String> charsList = allChars.split('');
    charsList.shuffle();

    // Generate a password of length 8 with characters from the shuffled list.
    String password = charsList.take(8).join('');
    return password;
  }
}

void main() {
  PasswordManager passwordManager = PasswordManager();

  // Example usage:
  String strongPassword = passwordManager.generateStrongPassword();
  String intermediatePassword = passwordManager.generateIntermediatePassword();
  String lowPassword = passwordManager.generateLowPassword();

  print('Strong Password: $strongPassword');
  print('Intermediate Password: $intermediatePassword');
  print('Low Password: $lowPassword');

  String passwordToCheck = 'StrongPass123!'; // Example password to check
  bool isStrong = passwordManager.validatePasswordStrength(passwordToCheck);
  print('Is Strong Password: $isStrong');
}
