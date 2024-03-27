import 'package:flutter/material.dart';
import 'package:qlkh/InforUv.dart';

class CustomKh extends StatelessWidget {
  CustomKh({
    required this.avatar,
    required this.course,
    required this.code,
    required this.date,
    required this.member,
  });
  final String avatar;
  final String course;
  final String code;
  final String date;
  final String member;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
          context: context,
          builder: (context) => buttonSheetContent(context),);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              avatar,
              width: 80,
              height: 60,
            ),
            SizedBox(
              width: 10,
            ),
            // Container(
            //   width: 250,
            //   child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250, // Đặt giới hạn chiều rộng cho Text
                  child: Text(
                    course,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.local_atm),
                    SizedBox(width: 10),
                    Text(code),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(width: 10),
                    Text(date),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.people_alt_sharp,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: 10),
                    Text(
                      member,
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
              ],
            ),

            // ),
          ],
        ),
      ),
    );
  }
  Widget buttonSheetContent(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      color: Colors.white,
      child: Column(
        children: [
          Container(height: 100,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,

                children: [
                  InforUv(
                      avatar: 'assets/images/av1.png',
                      name: 'Phạm Thu Trang',
                      infor: '00000023 / Trưởng nhóm KD - MKT'),
                  SizedBox(height: 2.5),
                  InforUv(
                      avatar: 'assets/images/av1.png',
                      name: 'Phạm Thu Trang',
                      infor: '00000023 / Trưởng nhóm KD - MKT'),
                  SizedBox(height: 2.5),
                  InforUv(
                      avatar: 'assets/images/av1.png',
                      name: 'Phạm Thu Trang',
                      infor: '00000023 / Trưởng nhóm KD - MKT'),
                  SizedBox(height: 2.5),
                  InforUv(
                      avatar: 'assets/images/av1.png',
                      name: 'Phạm Thu Trang',
                      infor: '00000023 / Trưởng nhóm KD - MKT'),
                  SizedBox(height: 2.5),
                  InforUv(
                      avatar: 'assets/images/av1.png',
                      name: 'Phạm Thu Trang',
                      infor: '00000023 / Trưởng nhóm KD - MKT'),
                  SizedBox(height: 2.5),
                  Container(height: 900,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
