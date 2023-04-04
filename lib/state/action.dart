import 'package:flutter_riverpod/flutter_riverpod.dart';

class getEmail extends StateNotifier<String> {
  getEmail() : super('');

  void emailReset(e) {
    state = e;
  }
}
