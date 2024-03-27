import 'package:flutter/material.dart';

class InforUv extends StatelessWidget {
  InforUv({
    required this.avatar,
    required this.name,
    required this.infor,
  });
  final String avatar;
  final String name;
  final String infor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: Row(
        children: [
          Image.asset(
            avatar,
            width: 60,
            height: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(infor)
            ],
          ),
        ],
      ),
    );
  }
}