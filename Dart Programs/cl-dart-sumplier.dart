import 'dart:io';

void main() {
  print('Welcome to the Multiplication Table Generator\n');

  // Prompt the user to enter a number
  print('Enter a number to generate its multiplication table:');
  int number = int.parse(stdin.readLineSync()!);

  // Generate the multiplication table and compute the sum
  List<int> multiples = generateMultiplicationTable(number);
  int sum = calculateSum(multiples);

  // Display the multiplication table
  print('\nMultiplication Table for $number:');
  print('--------------------------------');
  for (int i = 0; i < multiples.length; i++) {
    print('$number x ${i + 1} = ${multiples[i]}');
  }
  print('--------------------------------');

  // Display the sum of all numbers in the table
  print('\nSum of all numbers in the table: $sum');
}

// Function to generate the multiplication table for the first 10 multiples of a number
List<int> generateMultiplicationTable(int number) {
  List<int> multiples = [];
  for (int i = 1; i <= 10; i++) {
    multiples.add(number * i);
  }
  return multiples;
}

// Function to calculate the sum of all numbers in a list
int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}
