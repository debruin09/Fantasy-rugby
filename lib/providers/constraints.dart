import 'package:flutter/material.dart';

class Constraints with ChangeNotifier {
  bool _checkTotalStartPlayers = false;
  int _totalStartingPlayers = 5;
  int _maximumPlayers = 8;
  String _message;

  int get totalStartingPlayers => _totalStartingPlayers;
  int get maximumPlayers => _maximumPlayers;
  bool get checkTotalStartPlayers => _checkTotalStartPlayers;
  String get message => _message;

  setMessage() {
    _message = "You reached the maximum players per team";
    notifyListeners();
  }

  set checkTotalStartPlayers(value) {
    _checkTotalStartPlayers = value;
    notifyListeners();
  }
}
