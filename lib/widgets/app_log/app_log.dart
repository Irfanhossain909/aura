import 'dart:developer';

import 'package:aura/widgets/app_log/error_log.dart';
import 'package:flutter/foundation.dart';

void appLog(dynamic message) {
  try {
    if (kDebugMode) {
      log(message.toString());
    }
  } catch (e) {
    errorLog("app log", e);
  }
}
