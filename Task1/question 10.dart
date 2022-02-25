//WAP to a Pyramid star pattern as shown in the figure below.
import 'dart:io';

void main() {
  print("Enter the number of rows: ");
  int? rows = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}
