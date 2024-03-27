// import 'package:flutter/material.dart';
class CustomUv
    // extends StatelessWidget
{
  CustomUv({
    required this.avatar,
    required this.name,
    required this.type,
    required this.major,
    required this.date,
  });
  final String avatar;
  final String name;
  final String type;
  final String major;
  final String date;
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: EdgeInsets.all(10),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(15),
  //       color: Colors.white,
  //     ),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Image.asset(
  //           avatar,
  //           width: 60,
  //           height: 60,
  //         ),
  //         SizedBox(
  //           width: 20,
  //         ),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               name,
  //               style:
  //               TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //             ),
  //             Row(
  //               children: [
  //                 Icon(Icons.flag),
  //                 SizedBox(width: 10),
  //                 Text(type),
  //               ],
  //             ),
  //             Row(
  //               children: [
  //                 Icon(Icons.local_atm),
  //                 SizedBox(width: 10),
  //                 Text(major),
  //               ],
  //             ),
  //             Row(
  //               children: [
  //                 Icon(Icons.calendar_month),
  //                 SizedBox(width: 10),
  //                 Text(date),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
