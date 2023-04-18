import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetEmail extends StateNotifier<String> {
  GetEmail() : super('');

  void emailReset(e) {
    state = e;
  }
}

class ShowPass extends ChangeNotifier {
  bool _value = true;
  bool get value => _value;

  void changePass() {
    _value = !_value;
    notifyListeners();
  }
}

class GetDataFullName extends StateNotifier {
  GetDataFullName() : super('');

  void getFullName(e) {
    state = e;
  }
}

class GetDataEmail extends StateNotifier {
  GetDataEmail() : super('');

  void getFullMail(e) {
    state = e;
  }
}

class GetDataPassWord extends StateNotifier {
  GetDataPassWord() : super('');

  void getFullPass(e) {
    state = e;
  }
}

class GetPhoneNumber extends StateNotifier<String> {
  GetPhoneNumber() : super('');

  void getUserNumber(number) {
    state = number;
  }
}

class GetVerifyNumber extends StateNotifier<List<int>> {
  GetVerifyNumber() : super([]);

  void addVerify(list) {
    state = list;
  }
}
