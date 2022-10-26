import 'package:dio/dio.dart';

import '../Repo/DioHelper.dart';


class TriggerController {
  static Future<Response> postTrigger({Map<String, dynamic>? map}) {
    return DioHelper().post('/currencies/trigger', queryParameters: map);
  }
}