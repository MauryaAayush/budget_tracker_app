import 'dart:async';

import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  Timer? _timer;
  int secondsRemaining = 7200; // 2 hours

  HomeProvider() {
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        secondsRemaining--;
        notifyListeners();
      } else {
        _timer?.cancel();
      }
    });
  }

  String formatTimer(int tSeconds) {
    var secs = tSeconds;
    String? timerHour, timerMinute;
    timerHour = (secs ~/ 3600).toString().padLeft(2, '0');
    timerMinute = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');

    return "$timerHour:$timerMinute:$seconds";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
