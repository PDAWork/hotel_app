import 'package:flutter/foundation.dart';

abstract final class ApiEndpoints {
  static const String baseUrl = kDebugMode
      ? "https://run.mocky.io/v3/"
      : kProfileMode
          ? ""
          : "";

  static const String hotel = "d144777c-a67f-4e35-867a-cacc3b827473";
  static const String nomer = '8b532701-709e-4194-a41c-1a903af00195';
}
