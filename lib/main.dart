import 'package:flutter/material.dart';
import 'package:qlkh/CustomKh.dart';
import 'package:qlkh/CustomUv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CustomUv> UngVien = [
    CustomUv(avatar: 'assets/images/av1.png', name: 'Nguyễn Kiều Cần Thơ', type: 'Đại Lý', major: 'Tư vấn tài chính', date: '01/01/2024'),
    CustomUv(avatar: 'assets/images/av1.png', name: 'Nguyễn Mạnh Hùng', type: 'Đại Lý', major: 'Tư vấn tài chính', date: '01/01/2024'),
    CustomUv(avatar: 'assets/images/av1.png', name: 'Nguyễn Hoàng Duy', type: 'Đại Lý', major: 'Tư vấn tài chính', date: '01/01/2024'),
    CustomUv(avatar: 'assets/images/av1.png', name: 'Nguyễn Mạnh Khiêm', type: 'Đại Lý', major: 'Tư vấn tài chính', date: '01/01/2024'),
    CustomUv(avatar: 'assets/images/av1.png', name: 'Phạm Ngọc Quỳnh Anh', type: 'Đại Lý', major: 'Tư vấn tài chính', date: '01/01/2024'),
    CustomUv(avatar: 'assets/images/av1.png', name: 'Nguyễn Kiều Cần Thơ', type: 'Đại Lý', major: 'Tư vấn tài chính', date: '01/01/2024'),
  ];
  @override
  Widget _Tap1() {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 50),
      child: ListView.builder(
        itemCount: UngVien.length,
        itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    UngVien[index].avatar,
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        UngVien[index].name,
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.flag),
                          SizedBox(width: 10),
                          Text(UngVien[index].type),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.local_atm),
                          SizedBox(width: 10),
                          Text(UngVien[index].major),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          SizedBox(width: 10),
                          Text(UngVien[index].date),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
        }),
        // children: [
        //   // CustomUv(
        //   //   avatar: 'assets/images/av1.png',
        //   //   name: 'Nguyễn Kiều Cần Thơ',
        //   //   type: 'Đại Lý',
        //   //   major: 'Tư vấn tài chính',
        //   //   date: '01/01/2024',
        //   // ),
        //   // SizedBox(height: 10),
        //   // CustomUv(
        //   //   avatar: 'assets/images/av1.png',
        //   //   name: 'Nguyễn Mạnh Hùng',
        //   //   type: 'Đại Lý',
        //   //   major: 'Tư vấn tài chính',
        //   //   date: '01/01/2024',
        //   // ),
        //   // SizedBox(height: 10),
        //   // CustomUv(
        //   //   avatar: 'assets/images/av1.png',
        //   //   name: 'Nguyễn Hoàng Duy',
        //   //   type: 'Đại Lý',
        //   //   major: 'Tư vấn tài chính',
        //   //   date: '01/01/2024',
        //   // ),
        //   // SizedBox(height: 10),
        //   // CustomUv(
        //   //   avatar: 'assets/images/av1.png',
        //   //   name: 'Nguyễn Mạnh Khiêm',
        //   //   type: 'Đại Lý',
        //   //   major: 'Tư vấn tài chính',
        //   //   date: '01/01/2024',
        //   // ),
        //   // SizedBox(height: 10),
        //   // CustomUv(
        //   //   avatar: 'assets/images/av1.png',
        //   //   name: 'Phạm Ngọc Quỳnh Anh',
        //   //   type: 'Đại Lý',
        //   //   major: 'Tư vấn tài chính',
        //   //   date: '01/01/2024',
        //   // ),
        //   // SizedBox(height: 10),
        // ],
    );
  }

  Widget _Tap2() {
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 50),
        child: ListView(
          children: [
            CustomKh(
                avatar: 'assets/images/img1.png',
              course: 'Khóa học dành cho đại lý cấp cao',
              code: 'C32489573',
              date: '01/01/2023 - 31/12/2013',
              member: '5 ứng viên'),
            SizedBox(height: 10),
            CustomKh(
                avatar: 'assets/images/img1.png',
                course: 'Khóa học dành cho đại lý cấp cao',
                code: 'C32489573',
                date: '01/01/2023 - 31/12/2013',
                member: '5 ứng viên'),
            SizedBox(height: 10),
            CustomKh(
                avatar: 'assets/images/img1.png',
                course: 'Khóa học dành cho đại lý cấp cao',
                code: 'C32489573',
                date: '01/01/2023 - 31/12/2013',
                member: '5 ứng viên'),
            SizedBox(height: 10),
            CustomKh(
                avatar: 'assets/images/img1.png',
                course: 'Khóa học dành cho đại lý cấp cao',
                code: 'C32489573',
                date: '01/01/2023 - 31/12/2013',
                member: '5 ứng viên'),
            SizedBox(height: 10),
            // InkWell(
            //   onTap: (){
            //     showModalBottomSheet(
            //         context: context,
            //         builder: (context) => buttonSheetContent(context),);
            //   },
            //   child: Container(
            //     padding: EdgeInsets.all(10),
            //     width: double.infinity,
            //     height: 150,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(15),
            //       color: Colors.white,
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset(
            //           'assets/images/img1.png',
            //           width: 80,
            //           height: 60,
            //         ),
            //         SizedBox(
            //           width: 10,
            //         ),
            //         Container(
            //           width: 250,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 'Khóa học dành cho đại lý cấp cao',
            //                 style: TextStyle(
            //                     fontSize: 18, fontWeight: FontWeight.bold),
            //                 // overflow: TextOverflow.clip,
            //               ),
            //               Row(
            //                 children: [
            //                   Icon(Icons.local_atm),
            //                   SizedBox(width: 10),
            //                   Text('C32489573'),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Icon(Icons.calendar_month),
            //                   SizedBox(width: 10),
            //                   Text('01/01/2023 - 31/12/2013'),
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Icon(
            //                     Icons.people_alt_sharp,
            //                     color: Colors.deepPurple,
            //                   ),
            //                   SizedBox(width: 10),
            //                   Text(
            //                     '5 ứng viên',
            //                     style: TextStyle(color: Colors.deepPurple),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      );
  }

  // Widget buttonSheetContent(BuildContext context) {
  //   return Container(
  //     width: 100,
  //     height: double.infinity,
  //     color: Colors.white,
  //     child: Column(
  //       children: [
  //         AppBar(
  //           backgroundColor: Colors.white,
  //           title: Text(
  //             'Danh sách ứng viên',
  //             style: TextStyle(color: Colors.black),
  //           ),
  //           leading: IconButton(
  //             icon: Icon(
  //               Icons.close,
  //               color: Colors.black,
  //             ),
  //             onPressed: () {},
  //           ),
  //         ),
  //         Column(
  //           children: [
  //             Container(
  //               width: double.infinity,
  //               height: 60,
  //               margin: EdgeInsets.all(10),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(20),
  //                 color: Colors.grey,
  //               ),
  //               child: Row(
  //                 children: [
  //                   Image.asset(
  //                     'assets/images/av1.png',
  //                     width: 60,
  //                     height: 60,
  //                   ),
  //                   Column(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       SizedBox(height: 10),
  //                       Text(
  //                         'Phạm Thu Trang',
  //                         style: TextStyle(
  //                             fontSize: 14, fontWeight: FontWeight.bold),
  //                       ),
  //                       Text('00000023 / Trưởng nhóm KD - MKT')
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Lớp học đại lý tiềm năng',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'Ứng viên được giới thiệu',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  Tab(
                    child: Text('Khóa học đã đăng ký',
                        style: TextStyle(color: Colors.deepPurple)),
                  ),
                ],
                indicatorColor: Colors.deepPurple,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _Tap1(),
                    _Tap2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.deepPurple,
        ),
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(left: 10,right: 10),
        child: InkWell(
            onTap: () {},
            child: Container(
                child: Center(
                    child: Text('Đăng ký khóa học cho ứng viên',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
            )),
      ),
    );
  }
}
