import 'package:dart_fp_pipe/dart_fp_pipe.dart';

int add(int a, int b) => a + b;

String getResultMessage<T extends num>(T result) => 'Result: $result';

Future<(int responseCode, String response)> postMessage(String message) async {
  await Future.delayed(Duration(seconds: 1));
  return (200, 'Response: $message');
}

Future<(int responseCode, String response)> logMessage(
    Future<(int responseCode, String response)> postResponse,
    {String? additionalDetails}) async {
  final (responseCode, response) = await postResponse;
  print('Response code: $responseCode');
  print('Response: $response  $additionalDetails');
  return (responseCode, response);
}

Future<(int responseCode, String response)> append(
    Future<(int, String)> request, String additionalInfo) async {
  final (originalCode, originalResponse) = await request;

  return (originalCode, '$originalResponse $additionalInfo');
}

String show(int a) => 'Result: $a';

Future<void> main() async {
  final response = await add(1, 2)
      .pipe(getResultMessage) //
      .pipe(postMessage)
      .pipe((x) => logMessage(x, additionalDetails: 'Additional info'))
      .pipe2(append, 'Even More Additional Info');

  switch (response) {
    case (final code, final response) when code == 200:
      print('Success: $response');
    case (final responseCode, _):
      print('Failure: $responseCode');
  }
}
