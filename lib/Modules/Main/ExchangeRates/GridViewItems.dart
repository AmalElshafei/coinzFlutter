import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'GridModel.dart';
// import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

Widget RowCont() {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
    child: Row(children: const [
      Expanded(
        flex: 2,
        child: Text(
          'العملة',
          style: TextStyle(fontSize: 9.0, color: Colors.grey),
        ),
      ),
      Expanded(
          flex: 2,
          child: Text(

          'السعر', style: TextStyle(fontSize: 9.0, color: Colors.grey))),
      Expanded(
          flex: 1,
          child: Text('التداول', style: TextStyle(fontSize: 9.0, color: Colors.grey)))
    ]),
  );
}
// Widget Items(){
//   return Container(
// decoration: const BoxDecoration(
//   color: Color(0xFFF9F9FA)
// ),
//     width: 155.w,
//     height: 96.h,
//     child: Align(
//       alignment: Alignment.center,
//       child: Column(
// children: [
//   SvgPicture.asset('assets/images/plus.svg'),
//   TextButton(onPressed: () {  }, child: const Text('اضغط للإضافة',style: TextStyle(fontSize:10, color: Colors.grey ),),)
// ],
//       ),
//     ),
//   );
// }
Widget GridViewItems() {

  return GridView.count(
      childAspectRatio: 320/200,
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: [
        Container(
          // height: 96.h,
          // width: 155.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                  colors: [Color(0xFFFB79B4), Color(0xFF9B81EC)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/xrp.svg',width: 30.w,height: 30.h,),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'ريبـل',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Ripple',
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                ],
              ),
              const Text('\$10,544.69',
                  style: TextStyle(color: Colors.white, fontSize: 10))
            ],
          ),
        ),
        Container(
            height: 96.h,
            width: 155.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                    colors: [Color(0xFFFFDB00), Color(0xFFFFA700)])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SvgPicture.asset('assets/images/btc.svg',width: 30.w,height: 30.h,),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('بيتكوين',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                    SizedBox(
                      width: 3,
                    ),
                    Text('Bitcoin',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
                const Text('\$10,544.69',
                    style: TextStyle(color: Colors.white, fontSize: 10))
              ],
            )),
        Container(
          height: 96.h,
          width: 155.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                  colors: [Color(0xFF41E450), Color(0xFF02DFB6)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/eth.svg',width: 30.w,height: 30.h,),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('ايثيريوم',
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Ethereum',
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                ],
              ),
              const Text('\$10,544.69',
                  style: TextStyle(color: Colors.white, fontSize: 10))
            ],
          ),
        ),
        Container(
          height: 96.h,
          width: 155.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                  colors: [Color(0xFF58C4D8), Color(0xFF478EDA)])),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 25.0),
            child: Column(
              children: [
                SvgPicture.asset('assets/images/ltc.svg',width: 30.w,height: 30.h,),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('لايت كوين',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                     SizedBox(
                      width: 3,
                    ),
                    Text('Litecoin',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
                const Text('\$10,544.69',
                    style: TextStyle(color: Colors.white, fontSize: 10))
              ],
            ),
          ),
        ),
  Container(
decoration: const BoxDecoration(
  color: Color(0xFFF9F9FA)
),
    width: 155.w,
    height: 96.h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
children: [
  SvgPicture.asset('assets/images/plus.svg'),
  TextButton(onPressed: () {

  }, child: const Text('اضغط للإضافة',style: TextStyle(fontSize:10, color: Colors.grey ),),)
],
    ),
  )]);
}
