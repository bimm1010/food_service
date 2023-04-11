import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'action.dart';

final emailSaveStateProvider = StateNotifierProvider((ref) => getEmail());

final showOffPassStateProvider = ChangeNotifierProvider((ref) => showPass());

final dataSaveFullNameStateProvider =
    StateNotifierProvider((ref) => getDataFullName());

final dataSaveMailStateProvider =
    StateNotifierProvider((ref) => getDataEmail());

final dataSavePassStateProvider =
    StateNotifierProvider((ref) => getDataPassWord());

final dataSavePhoneNumberStateProvider =
    StateNotifierProvider((ref) => getPhoneNumber());
