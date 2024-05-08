import 'dart:io';

void main() {
  print('Welcome to the Simple Calculator\n');

  print('Menu:');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');
  print('5. Comparison (Greater than, Less than, Equal)');
  print('6. Exit');

  while (true) {
    print('\nEnter your choice (1-6):');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        performAddition();
        break;
      case '2':
        performSubtraction();
        break;
      case '3':
        performMultiplication();
        break;
      case '4':
        performDivision();
        break;
      case '5':
        performComparison();
        break;
      case '6':
        exit(0);
      default:
        print('Invalid choice. Please enter a number between 1 and 6.');
    }
  }
}

void performAddition() {
  print('\nEnter the first number:');
  double number1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double number2 = double.parse(stdin.readLineSync()!);

  double result = number1 + number2;
  print('The sum of $number1 and $number2 is $result');
}

void performSubtraction() {
  print('\nEnter the first number:');
  double number1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double number2 = double.parse(stdin.readLineSync()!);

  double result = number1 - number2;
  print('The difference of $number1 and $number2 is $result');
}

void performMultiplication() {
  print('\nEnter the first number:');
  double number1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double number2 = double.parse(stdin.readLineSync()!);

  double result = number1 * number2;
  print('The product of $number1 and $number2 is $result');
}

void performDivision() {
  print('\nEnter the dividend:');
  double dividend = double.parse(stdin.readLineSync()!);

  print('Enter the divisor:');
  double divisor = double.parse(stdin.readLineSync()!);

  if (divisor == 0) {
    print('Error: Division by zero is not allowed');
  } else {
    double result = dividend / divisor;
    print('The quotient of $dividend divided by $divisor is $result');
  }
}

void performComparison() {
  print('\nEnter the first number:');
  double number1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double number2 = double.parse(stdin.readLineSync()!);

  if (number1 > number2) {
    print('$number1 is greater than $number2');
  } else if (number1 < number2) {
    print('$number1 is less than $number2');
  } else {
    print('$number1 is equal to $number2');
  }
}
