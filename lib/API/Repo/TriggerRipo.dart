import 'package:coinz/Modules/Main/ExchangeRates/GridModel.dart';
import 'package:dio/dio.dart';

import '../Controller/CurrencyController.dart';
import '../Controller/TriggerController.dart';
class TriggerRepo{

  static var instance = TriggerRepo();
  // Future<List<Currency>> postTrigger({Map<String, dynamic>? map}) async{
  //   Response response = await TriggerController.postTrigger(map: map);
    // <Stuts> staus;
    // if (response.statusCode == 200) {
    //   response.data['currencies'].forEach((e){
    //     stus.add(Stuts.fromJson(e));
    //   }
    //   );
    // }
    // return staus;
  //}
}