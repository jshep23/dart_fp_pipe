import 'package:dart_fp_pipe/dart_fp_pipe.dart';
import 'package:test/test.dart';

void main() {
  test('Pipe.pipe works correctly', () {
    int calculateAgeInDogYears(int age, int dogYearsPerHumanYear) =>
        age * dogYearsPerHumanYear;
    String getAgeMessage(int age) => 'You are $age years old in dog years';

    final result = calculateAgeInDogYears(10, 7).pipe(getAgeMessage);
    expect(result, 'You are 70 years old in dog years');
  });

  test('Pipe2.pipe2 works correctly', () {
    int calculateAgeInDogYears(int age, int dogYearsPerHumanYear) =>
        age * dogYearsPerHumanYear;
    String getAgeMessage(int age, String name) =>
        '$name is $age years old in dog years';

    final result = calculateAgeInDogYears(10, 7).pipe2(getAgeMessage, 'John');
    expect(result, 'John is 70 years old in dog years');
  });

  test('Pipe3.pipe3 works correctly', () {
    String wrap<T1, T2, T3>(T1 a, T2 b, T3 c) => 'Wrapped: $a $b $c';

    final result = 'Hello'.pipe3(wrap, 'World', '!');
    expect(result, 'Wrapped: Hello World !');
  });

  test('Pipe4.pipe4 works correctly', () {
    String wrap<T1, T2, T3, T4>(T1 a, T2 b, T3 c, T4 d) =>
        'Wrapped: $a $b $c $d';

    final result = 'Hello'.pipe4(wrap, 'World', 'from', 'Dart');
    expect(result, 'Wrapped: Hello World from Dart');
  });

  test('Pipe5.pipe5 works correctly', () {
    String wrap<T1, T2, T3, T4, T5>(T1 a, T2 b, T3 c, T4 d, T5 e) =>
        'Wrapped: $a $b $c $d $e';

    final result = 'Hello'.pipe5(wrap, 'World', 'from', 'Dart', '!');
    expect(result, 'Wrapped: Hello World from Dart !');
  });
}
