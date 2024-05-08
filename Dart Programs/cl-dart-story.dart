import 'dart:io';

void main() {
  print('Welcome to Biodata Generator\n');

  print('Please enter your information:');
  print('Name: ');
  String name = stdin.readLineSync()!;
  print('Phone number: ');
  String phoneNumber = stdin.readLineSync()!;
  print('Age: ');
  int age = int.parse(stdin.readLineSync()!);
  print('Height (in cm): ');
  double height = double.parse(stdin.readLineSync()!);
  print('Weight (in kg): ');
  double weight = double.parse(stdin.readLineSync()!);
  print('Address: ');
  String address = stdin.readLineSync()!;
  print('Hobbies (comma-separated list): ');
  List<String> hobbies = stdin.readLineSync()!.split(',');

  print('\nGenerating Biodata...\n');

  print('==========================');
  print('        BIODATA           ');
  print('==========================\n');

  print('Name: $name');
  print('Phone Number: $phoneNumber');
  print('Age: $age');
  print('Height: $height cm');
  print('Weight: $weight kg');
  print('Address: $address');
  print('Hobbies: ');
  for (String hobby in hobbies) {
    print('- $hobby');
  }

  print('\n==========================');
}
