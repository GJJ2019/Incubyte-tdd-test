int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  var sum = 0;
  var numbersList = numbers.split(RegExp(r',|\n'));
  for (var number in numbersList) {
    sum += int.parse(number);
  }
  return sum;
}
