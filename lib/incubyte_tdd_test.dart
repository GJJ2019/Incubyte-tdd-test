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

  for (var number in numbersList) {
    sum += int.parse(number);
  }
  return sum;
}
