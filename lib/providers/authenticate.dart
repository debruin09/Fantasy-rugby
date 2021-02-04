import 'package:flutter/material.dart';

class AuthenticateProvider with ChangeNotifier {
  bool _showSignIn = true;

  set showSignIn(val) {
    _showSignIn = val;
    notifyListeners();
  }

  bool get showSignIn => _showSignIn;

  void toggle() {
    _showSignIn = !_showSignIn;
    notifyListeners();
  }
}
