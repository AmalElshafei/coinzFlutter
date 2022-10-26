import 'package:get/get.dart';
import '../../../API/Repo/currencyRepo.dart';
import 'GridModel.dart';
// import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
class ListController extends GetxController {
  //ScrollController controller = ScrollController();



  List<Currency> listofCurrencies = [];


  List<Currency> listOfFavCurrencies = [];



  bool isLoadingRequest = false;
  var url = 'https://newline.dev/currency/api/v1/currencies/list';
  var pNum = 1;
  getCurrencies() async {
    isLoadingRequest = true;
    update();
    // Map<String, dynamic> map = {
    //   'i_page_count': 20,
    //   'i_page_number': pNum
    // };
    listofCurrencies = await CurrncyRepo.instance.getCurrenciesReq();

   // print("Iam here");
    isLoadingRequest = false;
    update();
  }

    getFav(index) async {
      if(listofCurrencies.isEmpty ) return;
      if(listOfFavCurrencies.contains(listofCurrencies[index])){
        listOfFavCurrencies.remove(listofCurrencies[index]);
        update();
      }else{
        if(listOfFavCurrencies.length==4) {
        }else {
          listOfFavCurrencies.add(listofCurrencies[index]);
          update();
        }
  }}
  @override
  void onInit() {
    getCurrencies();
    getFav;
   // addLoadMoreTrigger();
    super.onInit();
  }

  // addLoadMoreTrigger() {
  //   controller.addListener(() {
  //     if (controller.position.maxScrollExtent ==
  //         controller.position.pixels) {
  //       loadMore();
  //     }
  //   });
  // }
  // onRefresh(){
  //   listofCurrencies.clear();
  //   pNum=1 ;
  //   stopLoadMore =false;
  //   getCurrencies();
  //
  //
  // }
  // bool stopLoadMore =false;
  // void loadMore() async {
  //   if(stopLoadMore) return;
  //
  //
  //   List<Currency> loadMoreList=[];
  //   pNum += 1;
  //   // isLoadingRequest = true;
  //   // update();
  //
  //   Map<String, dynamic> map = {
  //     'i_page_count': 20,
  //     'i_page_number': pNum
  //   };




    // loadMoreList = await CurrncyRepo.instance.getCurrenciesReq(map: map);
    //
    // if(loadMoreList.isEmpty)stopLoadMore =true;
    //
    //
    // listofCurrencies.addAll(loadMoreList);
    // // isLoadingRequest = false;
    //
    // update();

  }






  // addItems() async {
  //   controller.addListener(() {
  //     if (controller.position.maxScrollExtent == controller.position.pixels) {}
  //   });
  // }
  //
  //
  // generateList() {
  //   listofCurrencies = List.generate(
  //       listLength, (index) =>
  //       Currency(sIcon: (index + 1).toString(),
  //         sName: (index + 1).toString(),
  //         dValue: (index + 1).toString(),
  //         dTrading: (index + 1).toString(),));
  // }
  //

// void loadMore() async{
//    List<Currncy> loadmore= [];
//     pNum +=1;
//     Map<String, dynamic> map={
//       'i_page_count':20,
//       'i_page_number': pNum
//     };
//  //   loadmore = await CurrncyRepo.instance.getCurrenciesReq();
// }


