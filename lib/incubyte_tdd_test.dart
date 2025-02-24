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

  bool negativeNumber = false;

  for (var number in numbersList) {
    final intNum = int.parse(number);

    if (intNum < 0) {
      negativeNumber = true;
      break;
    }

    sum += int.parse(number);
  }

  if (negativeNumber) {
    throw FormatException('Negative numbers are not allowed');
  }

  return sum;
}
