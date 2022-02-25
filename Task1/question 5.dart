/*WAP print the Electricity Bill
     	Upto 200 - 0.5/unit
        	201 - 500 - 1/unit for units consumed above 200
        	501 - 1000 - 2.5/unit for units consumed above 500
        	1001 - 1500 - 3.5/unit for units consumed above 1000
        	1501 - 2500 - 5/unit for units consumed above 1500
        	Above 2500 - 10/unit for units consumed above 2500
*/

import 'dart:io';

void main() 
{
  print('Enter the total units : ');
  
  int? units = int.parse(stdin.readLineSync()!);
  double bill;

  if (units <= 200)
    bill = units * 0.5;
  else if (units > 200 && units <= 500)
      bill = (200 * 0.5) + (units - 200);
  else if (units > 500 && units <= 1000)
      bill = (200 * 0.5) + 300 + (units - 500)*2.5;
  else if (units > 1000 && units <= 1500)
      bill = (200 * 0.5) + 300 + (500 * 2.5) + (units - 1000)*3.5; 
  else if (units > 1500 && units <= 2500)
      bill = (200 * 0.5) + 300 + (500 * 2.5) + (500 * 3.5) + (units - 1500)*5;
  else
      bill = (200 * 0.5) + 300 + (500 * 2.5) + (500 * 3.5) + (1000 * 5) + (units - 2500)*10;

  print("Electricity bill is : $bill");
}
