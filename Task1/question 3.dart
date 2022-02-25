//Write a program (using functions) that asks the user for a long string containing multiple words. Print back to the user the same string in reverse manner.

import 'dart:io';

void main() 
{
  print('Enter a long String : ');
  
  String? s = stdin.readLineSync()!;

  //to reverse words in a String
  print(ReverseWords(s));
  
  //to reverse the whole String   
  print(ReverseString(s));
}

String ReverseWords(s) => s.split(' ').reversed.join(" ");

String ReverseString(s) => String.fromCharCodes(s.runes.toList().reversed);
