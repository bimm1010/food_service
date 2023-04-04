import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'action.dart';

final emailSaveStateProvider = StateNotifierProvider((ref) => getEmail());
