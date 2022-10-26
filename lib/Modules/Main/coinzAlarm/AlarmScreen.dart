import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../ExchangeRates/GridModel.dart';
import '../ExchangeRates/ListControllerC.dart';

class AlramScreen extends StatefulWidget {
  const AlramScreen({Key? key}) : super(key: key);

  @override
  State<AlramScreen> createState() => _AlramState();
}

class _AlramState extends State<AlramScreen> {
  ListController listController = Get.find<ListController>();
  var items = [
    'أكبر من',
    'أصغر من',
    'يساوي'
        ,
  ];
  Currency? selectedCoinz;
  List list = [];
  // List<Currency> list = [
  //   Currency( sName: '', sIcon: '',)
  //
  // ];
  String dropdownvalue = 'أكبر من';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:  [
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 30.0),
            child: Text(
              'منبه العملات',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 1),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 25.0),
            child: Text(
              'يرجى اختيـار نوع العملة',
              style: TextStyle(fontSize: 9.0, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 8),

          Padding(
            padding:  const EdgeInsetsDirectional.only(start: 25.0),
            child: Container(
              height:56.h,
              width: 323.w,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<Currency>(
                  value: selectedCoinz,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  onChanged: (Currency? currncy) {
                    setState(() {
                      selectedCoinz = currncy;
                    });
                  },
                  items: listController.listofCurrencies.map((map) {
                    return DropdownMenuItem<Currency>(
                        value: map,
                        child: Row(
                          children: [
                            Image.network(
                              map.sIcon,
                              width: 20.w,
                              height: 20.h,
                            ),
                            const SizedBox(width: 15,),
                            Text(
                              map.sName,

                            )
                          ],
                        ));
                  }).toList(),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 25.0),
            child: Text(
              'يرجى اختيـار قيمة المنبه',
              style: TextStyle(fontSize: 9.0, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding:  const EdgeInsetsDirectional.only(start: 25.0),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 160.w,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: const Text('أكبر من'),
                      // Initial Value
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),

                ),
                Container(
                  height: 50.h,
                  width: 160.w,

                  decoration: BoxDecoration(

                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        //    filled: true,
                        hintText: '\$10.000'),
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(height: 20,),
          Align(
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {},
                child: Container(
                  width: 323.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                          colors: [Color(0xFFFFDB00), Color(0xFFFFA700)])),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'إضافة تنبيه',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ),
                )),
          ),

        ]),
      ),
    );
  }
}

