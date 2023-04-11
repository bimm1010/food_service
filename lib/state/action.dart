import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/model/user.dart';

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

class getDataFullName extends StateNotifier {
  getDataFullName() : super('');

  void getFullName(e) {
    state = e;
  }
}

class getDataEmail extends StateNotifier {
  getDataEmail() : super('');

  void getFullMail(e) {
    state = e;
  }
}

class getDataPassWord extends StateNotifier {
  getDataPassWord() : super('');

  void getFullPass(e) {
    state = e;
  }
}

class getPhoneNumber extends StateNotifier<String> {
  getPhoneNumber() : super('');

  void getUserNumber(number) {
    state = number;
  }
}
