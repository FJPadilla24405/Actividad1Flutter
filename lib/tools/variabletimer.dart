import 'dart:async';

class VariableTimer implements Timer {
  void Function(VariableTimer) callback;
  Duration period;
  Timer? _timer;
  int _tick = 0;

  VariableTimer(Duration initialPeriod, this.callback)
      : period = initialPeriod {
    _timer = Timer(initialPeriod, _onTimer);
  }

  @override
  bool get isActive => _timer != null;

  @override
  int get tick => _tick;

  @override
  void cancel() {
    _timer?.cancel();
    _timer = null;
  }

  void _onTimer() {
    var stopwatch = Stopwatch()..start();
    _tick += 1;
    callback(this);
    if (!isActive) {
      return;
    }

    var adjustedPeriod = _max(Duration.zero, period - stopwatch.elapsed);
    _timer = Timer(adjustedPeriod, _onTimer);
  }
}

Duration _max(Duration duration1, Duration duration2) =>
    duration1 >= duration2 ? duration1 : duration2;