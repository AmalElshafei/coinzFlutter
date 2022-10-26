import 'package:dio/dio.dart';

import '../Repo/DioHelper.dart';


class CurrnccyController {
  static Future<Response> getCurrncy({Map<String, dynamic>? map}) {
    return DioHelper().get('/currencies/list', queryParameters: map);
  }
}