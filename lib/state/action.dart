import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class getEmail extends StateNotifier<String> {
  getEmail() : super('');

  void emailReset(e) {
    state = e;
  }
}

class showPass extends ChangeNotifier {
  bool _value = true;
  bool get value => _value;

  void changePass() {
    _value = !_value;
    notifyListeners();
  }
}
