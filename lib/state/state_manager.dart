import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'action.dart';

final emailSaveStateProvider = StateNotifierProvider((ref) => GetEmail());

final showOffPassStateProvider = ChangeNotifierProvider((ref) => ShowPass());

final dataSaveFullNameStateProvider =
    StateNotifierProvider((ref) => GetDataFullName());

final dataSaveMailStateProvider =
    StateNotifierProvider((ref) => GetDataEmail());

final dataSavePassStateProvider =
    StateNotifierProvider((ref) => GetDataPassWord());

final dataSavePhoneNumberStateProvider =
    StateNotifierProvider((ref) => GetPhoneNumber());

final dataSaveVerifyNumber = StateNotifierProvider((ref) => GetVerifyNumber());
