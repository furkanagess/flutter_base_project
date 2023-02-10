import 'package:dio/dio.dart';
import 'package:base_project/core/constants/enums/locale_keys_enum.dart';
import 'package:base_project/core/init/cache/locale_manager.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      headers: {
        'val': LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN),
      },
    );
  }
}
