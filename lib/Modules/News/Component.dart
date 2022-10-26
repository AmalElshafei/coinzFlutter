// import 'package:flutter/material.dart';
// import 'newsModels.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottie/lottie.dart';
// Widget newsComponent() {

//   return Container(
//     height: 107.h,
//     width: 332.w,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(5),
//       border: Border.all(
//         color: const Color(0xFFEAEAEA),
//         width: .5,
//       ),
//     ),
//
//
//       child: Row(
//         children: [
//
//           Padding(
//             padding: const EdgeInsetsDirectional.only(start :8.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//                child: Image(
//                   image: AssetImage(models.s_newsImage),
//                   width: 123.w,
//                   height: 94.h,
//
//                   fit: BoxFit.fill,
//                 ),
//               ),
//           ),
//
//
//           Padding(
//             padding: const EdgeInsetsDirectional.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   models.s_name,
//                   style: const TextStyle(fontSize: 14),
//                 ),
//                const SizedBox(height: 10.0),
//                 Text(
//                   models.s_date,
//                   style: const TextStyle(fontSize: 8),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//
//   );
// }
