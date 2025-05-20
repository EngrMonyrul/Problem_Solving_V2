import 'dart:io';

void main() {
  final Calculation permutationWarmUp = PermutationWarmUp();

  int factorialNumber = int.parse(stdin.readLineSync()!);

  final arrangementNumbers = permutationWarmUp.getArrangement(factorialNumber);
  // final permutationValue =
  //     permutationWarmUp.getPermutationValue(arrangementNumbers);

  print(arrangementNumbers);
}

abstract interface class Calculation {
  List<dynamic> getArrangement(int value);

  int getPermutationValue(List<List<int>> values);
}

class PermutationWarmUp extends Calculation {
  @override
  List<dynamic> getArrangement(int value) {
    var arrangementNumbers = [];
    var numbers = [];

    for (int i = 1; i <= value; i++) {
      numbers.add(i);
      for (int j = 1; j <= value; j++) {
        if (i != j) {
          numbers.add(j);
          if (!arrangementNumbers.contains(numbers) && j == value) {
            arrangementNumbers.add(numbers);
          }
        }
      }
      numbers = [];
      numbers.add(i);
      for (int j = value; j >= 1; j--) {
        if (i != j) {
          numbers.add(j);
          if (!arrangementNumbers.contains(numbers) && j == 1) {
            arrangementNumbers.add(numbers);
          }
        }
      }
      numbers = [];
    }

    return arrangementNumbers;
  }

  @override
  int getPermutationValue(List<List<int>> values) {
    throw UnimplementedError();
  }
}
