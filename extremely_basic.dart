import 'dart:io';

class Adder {
  Adder(this.a, this.b);

  int a;
  int b;

  int get value => a + b;
}

int get getUserIntValue {
  final value = stdin.readLineSync()!;
  return int.parse(value);
}

void main() {
  int a = getUserIntValue;
  int b = getUserIntValue;

  final sum = Adder(a, b);

  print("X = ${sum.value}");
}
