import 'dart:async';

String countUp(int count) {
  print('Start count up');
  StringBuffer sb = new StringBuffer();
  for (int i = 0; i < count; i++) {
    sb.write('${i} ');
  }
  print('finish count up');
  return sb.toString();
}

Future<String> createFutureCounter(int count) {
  return new Future(() { return countUp(count); });
}

void main(List<String> arguments) {
  print('start main');
  Future<String> future = createFutureCounter(100);
  print('adding Future API callbacks');
  future.then((value) => handleCompletion(value));
  print('finish main');
}

void handleError(err) {
  print('Async operation errored: $err');
}

void handleCompletion(value) {
  print('Aync  operation succeeded: $value');
}
