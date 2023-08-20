import 'package:dart_fp_pipe/immutable_dart_fp.dart';

int add(int a, int b) => a + b;

String getResultMessage<T extends num>(T result) => 'Result: $result';

Future<(int responseCode, String response)> postMessage(String message) async {
  await Future.delayed(Duration(seconds: 1));
  return (200, 'Response: $message');
}

Future<(int responseCode, String response)> logMessage(
    Future<(int responseCode, String response)> postResponse) async {
  final (responseCode, response) = await postResponse;
  print('Response code: $responseCode');
  print('Response: $response');
  return (responseCode, response);
}

Future<void> main() async {
  final response = await add(1, 2)
      .pipe(getResultMessage) //
      .pipe(postMessage)
      .pipe(logMessage);

  switch (response) {
    case (final code, final response) when code == 200:
      print('Success: $response');
    case (final responseCode, _):
      print('Failure: $responseCode');
  }
}
