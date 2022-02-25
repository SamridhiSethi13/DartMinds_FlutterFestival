//WAP to generate a Fibonacci series up to nth term.
import 'dart:io';

void main() {
  int a = 0, b = 1, c = 0, i;

  print("Enter the number of terms you want to generate:");
  int? terms = int.parse(stdin.readLineSync()!);

  print("Fibonacci terms: ");

  for (i = 1; i <= terms; i++) {
    print("$c");

    a = b;
    b = c;
    c = a + b;
  }
}
