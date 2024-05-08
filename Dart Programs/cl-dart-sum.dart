import 'dart:io';

void main() {
  print('Welcome to the Sum Calculator\n');

  print('Please enter the first number:');
  double number1 = double.parse(stdin.readLineSync()!);

  print('Please enter the second number:');
  double number2 = double.parse(stdin.readLineSync()!);

  double sum = number1 + number2;

  print('\nThe sum of $number1 and $number2 is $sum');
}
