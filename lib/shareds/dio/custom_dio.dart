import 'package:dio/native_imp.dart';
import 'package:test_jukebox/shareds/constants/constants.dart';

class CustomDio extends DioForNative {
  CustomDio() {
    options.baseUrl = BASE_URL;
    // interceptors.add(CustomInterceptors());
  }
}
