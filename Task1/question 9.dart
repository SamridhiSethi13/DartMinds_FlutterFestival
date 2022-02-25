//WAP to check whether a character is an alphabet or not using a ternary operator.

import 'dart:io';

void main() 
{
  print('Enter a character : ');
  
  String c = stdin.readLineSync()!;

  print(isAlpha(c));
}

bool isAlpha(String c) => RegExp(r'^[a-zA-Z]+$').hasMatch(c);