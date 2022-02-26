//You are given a List of numbers from 1 to 26. Your task is to output the corresponding characters (which will be from ‘a’ - ‘z’ then) on the console using the ‘map’ function defined on lists in Dart.

void main() {
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26];

  var alphabet = num.map((n) => String.fromCharCode(n+96));

  print(alphabet);
}