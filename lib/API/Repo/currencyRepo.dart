import 'package:coinz/Modules/Main/ExchangeRates/GridModel.dart';
import 'package:dio/dio.dart';

import '../Controller/CurrencyController.dart';

class CurrncyRepo{

  static var instance = CurrncyRepo();
  Future<List<Currency>> getCurrenciesReq({Map<String, dynamic>? map}) async{
    Response response = await CurrnccyController.getCurrncy(map: map);
    List<Currency> listofCurrencies=[];
    if (response.statusCode == 200) {
      response.data['currencies'].forEach((e){
            listofCurrencies.add(Currency.fromJson(e));
          }
      );
    }
    return listofCurrencies;
  }
}
