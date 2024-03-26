import 'package:flutter/material.dart';

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
  @override
  Widget _Tap1() {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/av1.png',
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
                      'Nguyễn Kiều Cần Thơ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.flag),
                        SizedBox(width: 10),
                        Text('Đại lý'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_atm),
                        SizedBox(width: 10),
                        Text('Tư vấn tài chính'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(width: 10),
                        Text('01/01/2024'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _Tap2() {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            context: context,
            builder: (context) => buttonSheetContent(context),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(30),
          //     topRight: Radius.circular(30),
          //   ),
          // ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/img1.png',
                    width: 80,
                    height: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Khóa học dành cho đại lý cấp cao',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          // overflow: TextOverflow.clip,

                        ),
                        Row(
                          children: [
                            Icon(Icons.local_atm),
                            SizedBox(width: 10),
                            Text('C32489573'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_month),
                            SizedBox(width: 10),
                            Text('01/01/2023 - 31/12/2013'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.people_alt_sharp,color: Colors.deepPurple,),
                            SizedBox(width: 10),
                            Text('5 ứng viên',style: TextStyle(color: Colors.deepPurple),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget buttonSheetContent(BuildContext context) {
    return Container(
      width: 100,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
      title: Text(
      'Danh sách ứng viên',
        style: TextStyle(color: Colors.black),
      ),
      leading: IconButton(
        icon: Icon(Icons.close,color: Colors.black,),
        onPressed: () {},
      ),
    ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/av1.png',
                  width: 60,
                  height: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phạm Thu Trang',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Text('00000023 / Trưởng nhóm KD - MKT')
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }

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

    );
  }
}
