import 'package:dart_fp_pipe/dart_fp_pipe.dart';
import 'package:test/test.dart';

void main() {
  test('FunctionPipe.pipe works correctly', () {
    int add(int a) => a + 10;
    String getResultMessage<T extends num>(T result) => 'Result: $result';

    final result = add(5).pipe(getResultMessage);
    expect(result, 'Result: 15');
  });

  test('FunctionPipe2.pipe2 works correctly', () {
    int add(int a, int b) => a + b;
    String getResultMessage<T extends num>(T result, String additionalInfo) =>
        'Result: $result $additionalInfo';

    final result = add(1, 2).pipe2(getResultMessage, "Good Job!");
    expect(result, 'Result: 3 Good Job!');
  });

  test('FunctionPipe3.pipe3 works correctly', () {
    int add(int a, int b, int c) => a + b + c;
    String wrap<R>(R Function(int, int, int) func) =>
        'Wrapped: ${func(1, 2, 3)}';

    final result = add.pipe3(wrap);
    expect(result, 'Wrapped: 6');
  });

  test('FunctionPipe4.pipe4 works correctly', () {
    int add(int a, int b, int c, int d) => a + b + c + d;
    String wrap<R>(R Function(int, int, int, int) func) =>
        'Wrapped: ${func(1, 2, 3, 4)}';

    final result = add.pipe4(wrap);
    expect(result, 'Wrapped: 10');
  });

  test('FunctionPipe5.pipe5 works correctly', () {
    int add(int a, int b, int c, int d, int e) => a + b + c + d + e;
    String wrap<R>(R Function(int, int, int, int, int) func) =>
        'Wrapped: ${func(1, 2, 3, 4, 5)}';

    final result = add.pipe5(wrap);
    expect(result, 'Wrapped: 15');
  });
}
