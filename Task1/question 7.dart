//WAP to check if a number is an armstrong number or not.

import 'dart:io';

void main() 
{
  print('Enter a number : ');
  
  int? n = int.parse(stdin.readLineSync()!);

  print('Number is ${checkArmStrong(n)}');
}

String checkArmStrong(int n)
{
  int temp = n, sum = 0;

  while(temp > 0)
  {
    int r = temp % 10;
    sum += (r*r*r);
    temp ~/= 10;
  }

  return (n == sum) ? 'ArmStrong' : 'Not ArmStrong';
}