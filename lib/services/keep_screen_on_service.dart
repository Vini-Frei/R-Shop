import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Holds the Android window awake while R-Shop is in the foreground.
class KeepScreenOnService {
  static const _channel = MethodChannel('com.retro.rshop/storage');

  static Future<void> setEnabled(bool enabled) async {
    try {
      await _channel.invokeMethod('setKeepScreenOn', {'enabled': enabled});
    } catch (e) {
      debugPrint('KeepScreenOnService: $e');
    }
  }
}
