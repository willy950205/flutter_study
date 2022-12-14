import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sprintf/sprintf.dart';

enum TimerStatus { running, paused, stopped, resting }

class TimerScreen extends StatefulWidget {
  @override
  _TimeScreenState createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimerScreen> {
  static const WORK_SECONDS = 25; // * 60
  static const REST_SECONDS = 5; // * 60

  late TimerStatus _timerStatus;
  late int _timer;
  late int _pomodoroCount;

  @override
  void initState() {
    super.initState();
    _timerStatus = TimerStatus.stopped;
    print(_timerStatus.toString());
    _timer = WORK_SECONDS;
    _pomodoroCount = 0;
  }

  String secondsToString(int seconds) {
    return sprintf("%02d : %02d", [seconds ~/ 60, seconds % 60]);
  }

  void run() {
    setState(() {
      _timerStatus = TimerStatus.running;
      print("[=>] " + _timerStatus.toString());
      runTimer();
    });
  }

  void rest() {
    setState(() {
      _timer = REST_SECONDS;
      _timerStatus = TimerStatus.resting;
      print("[=>] " + _timerStatus.toString());
    });
  }

  void pause() {
    setState(() {
      _timerStatus = TimerStatus.paused;
      print(" [=> ] " + _timerStatus.toString());
    });
  }

  void resume() {
    run();
  }

  void stop() {
    setState(() {
      _timer = WORK_SECONDS;
      _timerStatus = TimerStatus.stopped;
      print("[=>] " + _timerStatus.toString());
    });
  }

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void runTimer() async {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      switch (_timerStatus) {
        case TimerStatus.paused:
          timer.cancel();
          break;

        case TimerStatus.stopped:
          timer.cancel();
          break;

        case TimerStatus.running:
          if (_timer <= 0) {
            showToast("?????? ??????");
            rest();
          } else {
            setState(() {
              _timer -= 1;
            });
          }
          break;

        case TimerStatus.resting:
          if (_timer <= 0) {
            setState(() {
              _pomodoroCount += 1;
            });
            showToast("?????? $_pomodoroCount?????? ??????????????? ??????????????????.");
            timer.cancel();
            stop();
          } else {
            setState(() {
              _timer -= 1;
            });
          }
          break;
        default:
          break;
      }
    });
  }

// build ????????? ????????? ????????? ???????????? screen ??????
// ??? ?????? ????????? ????????? ??????????????????????????? ?????? ?????????
  @override
  Widget build(BuildContext context) {
    final List<Widget> _runningButtons = [
      ElevatedButton(
          onPressed: _timerStatus == TimerStatus.paused ? resume : pause,
          child: Text(
            _timerStatus == TimerStatus.paused ? '????????????' : '????????????',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )),
      Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
        onPressed: stop,
        child: Text(
          '????????????',
          style: TextStyle(fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.grey),
      )
    ];
    final List<Widget> _stoppedButtons = [
      ElevatedButton(
        onPressed: run,
        child: Text(
          '????????????',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
            primary: _timerStatus == TimerStatus.resting
                ? Colors.green
                : Colors.blue),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('???????????? ?????????'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Center(
              child: Text(
                secondsToString(_timer),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _timerStatus == TimerStatus.resting
                  ? Colors.green
                  : Colors.blue,
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 1 == 2
                  ? const []
                  : _timerStatus == TimerStatus.stopped
                      ? _stoppedButtons
                      : _runningButtons)
        ],
      ),
    );
  }
}
