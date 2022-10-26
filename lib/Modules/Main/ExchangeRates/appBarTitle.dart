
import 'package:flutter/material.dart';

Widget topPage(){
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.only(start: 40.0),
          child: Text(
            'اسـعار العملات الالكترونية',
            style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding:  const EdgeInsetsDirectional.only(start: 10.0),
          child: Row(
              children:  const [
                Text(
                  'آخر تحديث',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(width: 7.0),
                Text(
                    '09-19-2018',
                    style: TextStyle(fontSize: 12, color: Colors.grey))]),)
      ]);

}