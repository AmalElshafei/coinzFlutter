import 'package:get/get.dart';
import 'package:dio/dio.dart';

import 'newsModels.dart';


class ListControllerN extends GetxController {
  List<TNews> listofNews = [];
  bool isLoadingReq = false;
  var url = "https://newline.dev/currency/api/v1/news/list";

  getnews() async {
    isLoadingReq = true;
    update();
    var response = await Dio().get(url);
    if (response.statusCode == 200) {
      listofNews =
      List<TNews>.from(response.data["news"].map((object) =>
          TNews.fromJson(object))
      );
    }

    isLoadingReq = false;
    update();
  }

  @override
  void onInit() {
    getnews();
    super.onInit();
  }
}
