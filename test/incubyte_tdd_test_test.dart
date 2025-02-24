import 'package:incubyte_tdd_test/incubyte_tdd_test.dart';
import 'package:test/test.dart';

void main() {
  test('Input: “”, Output: 0', () {
    expect(add(''), 0);
  });

  test('Input: “1”, Output: 1', () {
    expect(add('1'), 1);
  });

  test('Input: “1,5”, Output: 6', () {
    expect(add('1,5'), 6);
  });

  test('"1\n2,3" should return 6', () {
    expect(add('1\n2,3'), 6);
  });
}
