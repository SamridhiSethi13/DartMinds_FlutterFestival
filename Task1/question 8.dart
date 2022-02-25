//Write a program to find the maximum between three numbers using the ternary operator.
import 'dart:io';

void main() {
  print("Enter 3 numbers:");
  int? n1 = int.parse(stdin.readLineSync()!);
  int? n2 = int.parse(stdin.readLineSync()!);
  int? n3 = int.parse(stdin.readLineSync()!);

  int t, max;

  t = n1 > n2 ? n1 : n2;
  max = t > n3 ? t : n3;

  print("Max value is $max");
}
