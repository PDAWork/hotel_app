import 'package:flutter/foundation.dart';

abstract final class ApiEndpoints {
  static const String baseUrl = kDebugMode
      ? "https://run.mocky.io/v3/"
      : kProfileMode
          ? ""
          : "";

  static const String hotel = "d144777c-a67f-4e35-867a-cacc3b827473";
}
