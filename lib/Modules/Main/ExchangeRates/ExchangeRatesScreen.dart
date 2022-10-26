
import 'package:coinz/Modules/Main/ExchangeRates/GridViewItems.dart';
import 'package:coinz/Modules/Main/ExchangeRates/appBarTitle.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import 'CustomSnackBar.dart';
import 'ListControllerC.dart';

class ExchangeRates extends StatefulWidget {
  const ExchangeRates({Key? key}) : super(key: key);

  @override
  State<ExchangeRates> createState() => _ExchangeRatesState();
}

class _ExchangeRatesState extends State<ExchangeRates> {
  ListController listController = Get.put(ListController());
  // final MultiSelectController<
  //     ListController>? _controller = MultiSelectController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context,
                  bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                      title: topPage(),
                      backgroundColor: Colors.white,
                      pinned: true,
                      elevation: 0,
                      expandedHeight: 260.h,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 60.0, 25.0, 0.0),
                          child: GridViewItems(),
                        )
                        //Padding(
                            // padding: const EdgeInsetsDirectional.fromSTEB(
                            //     25.0, 60.0, 25.0, 0.0),
                            // child: GridView.count(
                            //     childAspectRatio: 320 / 200,
                            //     crossAxisCount: 2,
                            //     crossAxisSpacing: 10.0,
                            //     mainAxisSpacing: 10.0,
                            //     children: [
                            //       Container(
                            //         decoration: const BoxDecoration(
                            //             color: Color(0xFFF9F9FA)
                            //         ),
                            //         width: 155.w,
                            //         height: 96.h,
                            //         child: Column(
                            //           mainAxisAlignment: MainAxisAlignment
                            //               .center,
                            //           children: [
                            //             SvgPicture.asset(
                            //                 'assets/images/plus.svg'),
                            //             TextButton(onPressed: () {
                            //               //  listController.getFav( );
                            //             },
                            //               child: const Text('اضغط للإضافة',
                            //                 style: TextStyle(fontSize: 10,
                            //                     color: Colors.grey),),)
                            //           ],
                            //         ),
                            //       )
                            //     ])
                        ),
                      ),
                  SliverAppBar(
                    title: RowCont(),
                    pinned: true,
                    elevation: 0,
                    stretch: false,
                    backgroundColor: const Color(0xFFF8F9FB),
                  )
                ];
              },
              body: GetBuilder<ListController>(builder: (controller) {
                return SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: controller.isLoadingRequest
                        ? _buildLoading()
                        : _buildMainBody());
              }),
            )));
  }

  RefreshIndicator _buildMainBody() {
    return RefreshIndicator(
        onRefresh: () {
          return listController.getCurrencies();
        },
        child: listController.listofCurrencies.isEmpty
            ? const Text(
          "empty",
          style: TextStyle(fontSize: 50),
        ) :
        ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: listController.listofCurrencies.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      listController.listofCurrencies[index].sIcon,
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                          listController.listofCurrencies[index].sName)),
                  Expanded(
                      flex: 1,
                      child: Text(
                          listController.listofCurrencies[index].dValue)),
                  const Expanded(
                    flex: 1,
                    child: Text(
                      '\$  ',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        listController.listofCurrencies[index].dTrading,
                        style:
                        const TextStyle(color: Colors.lightGreenAccent),
                      )),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(
              height: 10,
            )
        ));
  }

//

  Center _buildLoading() {
    return Center(
      child: SizedBox(
        width: 150.w,
        height: 150.h,
        child: Lottie.asset(
          'assets/images/a.json',
        ),
      ),
    );
  }

//
// Widget GridViewItems() {
//   return GridView.count(
//       childAspectRatio: 320/200,
//       crossAxisCount: 2,
//       crossAxisSpacing: 10.0,
//       mainAxisSpacing: 10.0,
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//               color: Color(0xFFF9F9FA)
//           ),
//           width: 155.w,
//           height: 96.h,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset('assets/images/plus.svg'),
//               TextButton(onPressed: () {
// if  ( listController.lis);
//               }, child: const Text('اضغط للإضافة',style: TextStyle(fontSize:10, color: Colors.grey ),),)
//             ],
//           ),
//         )]);
// }


// Center _buildNoInternetConnection(BuildContext context) {
//   return Center(
//       child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//       SizedBox(
//       width: 180,
//       height: 180,
//       child: Lottie.asset('assets/b.json'),
//   ),    ],
//       ),
//   );
// }

// Center _buildLoading() {
//   return Center(
//     child: SizedBox(
//       width: 150.w,
//       height: 150.h,
//       child: Lottie.asset(
//         'assets/images/a.json',
//       ),
//     ),
//   );
// }
//
// Widget GridViewItems() {
//
//   return GridView.count(
//       childAspectRatio: 320/200,
//       crossAxisCount: 2,
//       crossAxisSpacing: 10.0,
//       mainAxisSpacing: 10.0,
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//               color: Color(0xFFF9F9FA)
//           ),
//           width: 155.w,
//           height: 96.h,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset('assets/images/plus.svg'),
//               TextButton(onPressed: () {
// if  ( listController.lis);
//               }, child: const Text('اضغط للإضافة',style: TextStyle(fontSize:10, color: Colors.grey ),),)
//             ],
//           ),
//         )]);
// }


// Center _buildNoInternetConnection(BuildContext context) {
//   return Center(
//       child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//       SizedBox(
//       width: 180,
//       height: 180,
//       child: Lottie.asset('assets/b.json'),
//   ),    ],
//       ),
//   );
// }
}