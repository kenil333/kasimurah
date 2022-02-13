import 'dart:async';

class StringStream {
  final StreamController<String?> _string = StreamController<String?>();
  StreamSink<String?> get stringsink => _string.sink;
  Stream<String?> get stringstream => _string.stream;

  void dispose() {
    _string.close();
  }
}
