//  For this question, we will keep track of when our friend’s birthdays are, and be able to find that information based on their name.Create a dictionary of names and birthdays. When you run your program it should ask the user to enter a name, and return the birthday of that person back to them. (Note: You can store the bday in any format/datatype).

import 'dart:io';

void main() {
  Map<String, Object> birthdays = {
    "Kashish Jain": "14/03/2006",
    "Kareena Kapoor": "17/01/1989",
    "Anushka Sharma": "10/12/2001",
  };

  print("\nWe know the birthdays of the following people: \n");

  birthdays.forEach((key, value) {
    print(key);
  });

  stdout.write("\nWho's birthday do you want to know? ");
  String choice = stdin.readLineSync()!;
  if (birthdays.containsKey(choice)) {
    print("\n$choice's birthdate is ${birthdays[choice]}\n");
  } else {
    print("\nSadly, we don't have $choice's birthdate.");
  }
}
