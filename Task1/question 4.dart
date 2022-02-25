//WAP to perform mathematical operations like addition, subtraction, multiplication and division using the fat arrow syntax.

import 'dart:io';

void main() {
  print("Enter two numbers:");
  int? n1 = int.parse(stdin.readLineSync()!);
  int? n2 = int.parse(stdin.readLineSync()!);

  Addition(n1, n2);
  Subtraction(n1, n2);
  Multiplication(n1, n2);
  Division(n1, n2);
}

void Addition(int num1, int num2) =>
    print('Addition of num1 and num2 = ${num1 + num2}');

void Subtraction(int num1, int num2) =>
    print('Subtraction of num1 and num2 = ${num1 - num2}');

void Multiplication(int num1, int num2) =>
    print('Multiplication of num1 and num2 = ${num1 * num2}');

void Division(int num1, int num2) =>
    print('Division of num1 and num2 = ${num1 / num2}');
