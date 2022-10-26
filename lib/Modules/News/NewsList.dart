import 'package:coinz/Modules/News/NewsDetails.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'newsController.dart';
import 'package:lottie/lottie.dart';

class NewsList extends StatelessWidget {
  NewsList({Key? key}) : super(key: key);
  ListControllerN listController = Get.put(ListControllerN());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GetBuilder<ListControllerN>(builder: (controller) {
        return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child:
                controller.isLoadingReq ? _buildLoading() : _buildMainBody());
      }),
    ));
  }

  //
  RefreshIndicator _buildMainBody() {
    return RefreshIndicator(
      onRefresh: () {
        return listController.getnews();
      },
      child: listController.listofNews.isEmpty
          ? const Text(
              "empty",
              style: TextStyle(fontSize: 50),
            )
          : Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsetsDirectional.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'أخبار وتقارير',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: listController.listofNews.length,

                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NewsDetails(
                                          "${listController.listofNews[index].sTitle}",
                                          "${listController.listofNews[index].sDescription}",
                                          "assets/images/one_coin.png",
                                          "${listController.listofNews[index].dtModifiedDate}",




                                        )),
                                  );                                },
                                child: Container(
                                  height: 107.h,
                                  width: 332.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: const Color(0xFFEAEAEA),
                                      width: .5,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.only(
                                            start: 8.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/one_coin.png",
                                            width: 123.w,
                                            height: 94.h,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsetsDirectional.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width :180.w,
                                              height:70.h ,
                                              child: Text(
                                                "${listController.listofNews[index].sTitle}",
                                                maxLines: 3 ,

                                                style:
                                                const TextStyle(fontSize: 14,overflow:TextOverflow.ellipsis
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 10.0),
                                            Text(
                                              "${listController.listofNews[index].dtModifiedDate}",
                                              style: const TextStyle(fontSize: 8),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                          separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                            height: 10,
                          )),
                    )



                  ],
                ),
              ),
            ),
    );
  }
}

Center _buildLoading() {
  return Center(
    child: SizedBox(
      width: 150,
      height: 150,
      child: Lottie.asset(
        'assets/a.json',
      ),
    ),
  );
}
