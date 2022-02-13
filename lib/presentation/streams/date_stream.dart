import 'dart:async';

class DateStream {
  final StreamController<DateTime?> _date = StreamController<DateTime?>();
  StreamSink<DateTime?> get datesink => _date.sink;
  Stream<DateTime?> get datestream => _date.stream;

  void dispose() {
    _date.close();
  }
}
