//WAP to check if a number is divisible by 5.

import 'dart:io';

void main() 
{
  print('Enter a number : ');
  
  int? n = int.parse(stdin.readLineSync()!);

  String res = (n% 5 == 0) ? 'Divisible by 5' : 'Not Divisible by 5';

  print(res);
}
