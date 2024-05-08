void main() {
  // Example usage of processList function with different operations
  
  // Function to double each number in the list
  processList([1, 2, 3, 4, 5], (int number) => number * 2);
  
  // Function to square each number in the list
  processList([1, 2, 3, 4, 5], (int number) => number * number);
  
  // Function to calculate the cube of each number in the list
  processList([1, 2, 3, 4, 5], (int number) => number * number * number);
}

// Function to process a list of numbers with a given operation
void processList(List<int> numbers, int Function(int) operation) {
  print('Input List: $numbers');
  print('Output List:');
  
  for (int number in numbers) {
    int result = operation(number);
    print(result);
  }
  print('');
}
