int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  var sum = 0;
  List<String> numbersList;

  if (numbers.startsWith('//')) {
    var delimiter = numbers[2];
    numbers = numbers.split('\n')[1];
    numbersList = numbers.split(delimiter);
  } else {
    numbersList = numbers.split(RegExp(r',|\n'));
  }

  List<String> negativeNumbers = [];

  for (var number in numbersList) {
    final intNum = int.parse(number);

    if (intNum < 0) {
      negativeNumbers.add(number);
      continue;
    }

    sum += int.parse(number);
  }

  if (negativeNumbers.isNotEmpty) {
    throw FormatException(
      'Negatives not allowed: ${negativeNumbers.join(',')}',
    );
  }

  return sum;
}
