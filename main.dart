class Logger {
  void log(dynamic v) {
    print(DateTime.now().toString() + ' ' + v);
  }
}

void main(List<String> arguments) {
  new Logger().log('program started');
  new Logger().log('doing something');
  new Logger().log('program finished');

  new Logger()
    ..log('ha')
    ..log('ms')
    ..log('ster');
}

