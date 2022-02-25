//WAP to check if a number is even or odd using functions.

import 'dart:io';

void main() {
  print("Enter a number");
  int? n = int.parse(stdin.readLineSync()!);
  evenodd(n);
}

evenodd(number) {
  if (number % 2 == 0) {
    print("Number is even");
  } else {
    print("Number is odd");
  }
}
