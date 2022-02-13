import 'dart:async';

class BoolStream {
  final StreamController<bool> _bool = StreamController<bool>();
  StreamSink<bool> get boolsink => _bool.sink;
  Stream<bool> get boolstream => _bool.stream;

  void dispose() {
    _bool.close();
  }
}
