import 'dart:io';

// Define the Car class
class Car {
  String name;
  double price;

  // Constructor
  Car(this.name, this.price);

  // Method to change the price of the car
  void changePrice(double newPrice) {
    price = newPrice;
    print('The price of $name has been updated to $price');
  }
}

// Define the Person class
class Person {
  String name;
  List<Car> ownedCars = [];
  double moneyLeft;

  // Constructor
  Person(this.name, this.moneyLeft);

  // Method to buy a car
  void buyCar(Car car) {
    if (moneyLeft >= car.price) {
      ownedCars.add(car);
      moneyLeft -= car.price;
      print('$name has bought ${car.name} for ${car.price}. Money left: $moneyLeft');
    } else {
      print('Sorry, $name does not have enough money to buy ${car.name}');
    }
  }

  // Method to sell a car
  void sellCar(Car car) {
    if (ownedCars.contains(car)) {
      ownedCars.remove(car);
      moneyLeft += car.price;
      print('$name has sold ${car.name} for ${car.price}. Money left: $moneyLeft');
    } else {
      print('$name does not own ${car.name}');
    }
  }
}

void main() {
  // Create instances of Car
  Car car1 = Car('Toyota Camry', 25000);
  Car car2 = Car('Honda Civic', 20000);

  // Prompt the user to enter their name and initial money
  print('Welcome to the Car Buying and Selling Platform\n');
  print('Enter your name:');
  String userName = stdin.readLineSync()!;
  print('Enter your initial money:');
  double userMoney = double.parse(stdin.readLineSync()!);

  // Create an instance of Person representing the user
  Person user = Person(userName, userMoney);

  // Display available cars
  print('\nAvailable Cars:');
  print('1. ${car1.name} - \$${car1.price}');
  print('2. ${car2.name} - \$${car2.price}');

  // Prompt the user to choose a car to buy
  print('\nChoose a car to buy (enter the car number):');
  int carChoice = int.parse(stdin.readLineSync()!);

  // Buy the chosen car
  if (carChoice == 1) {
    user.buyCar(car1);
  } else if (carChoice == 2) {
    user.buyCar(car2);
  } else {
    print('Invalid car choice');
  }

  // Prompt the user to choose a car to sell
  if (user.ownedCars.isNotEmpty) {
    print('\nCars owned by ${user.name}:');
    for (int i = 0; i < user.ownedCars.length; i++) {
      print('${i + 1}. ${user.ownedCars[i].name}');
    }

    print('\nChoose a car to sell (enter the car number):');
    int sellChoice = int.parse(stdin.readLineSync()!);

    // Sell the chosen car
    if (sellChoice >= 1 && sellChoice <= user.ownedCars.length) {
      user.sellCar(user.ownedCars[sellChoice - 1]);
    } else {
      print('Invalid car choice');
    }
  } else {
    print('\n${user.name} does not own any cars to sell');
  }
}
