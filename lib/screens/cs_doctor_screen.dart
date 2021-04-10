import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CSDoctorScreen extends StatelessWidget {
  List<String> doctorsNames = [
    "Dr/Osama AboElnasr" ,
    "Dr/Abdelaziz said",
    "Dr/sara Metwally",
    "Dr/Waleed Al-Adrosy",
    "Dr/Mohamed Hagag",
    "Dr/Reem El-deeb",
    "Dr/samir El-mogy",
    "Dr/Mohamed El-rahmawy",
    "Dr/sherihan Mohamed ",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              radius: 20.w,
              backgroundImage: ExactAssetImage("assets/images/user.png"),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.arrow_back,
                  size: 40.w,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3.7,
              ),
              CircleAvatar(
                radius: 35.w,
                backgroundImage: ExactAssetImage("assets/images/pic.jpeg"),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40.w,
                          backgroundImage:
                              ExactAssetImage("assets/images/user.png"),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          doctorsNames[index],
                          style: TextStyle(fontSize: 20.sp),
                          softWrap: true,
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: doctorsNames.length,
            ),
          )
        ],
      ),
    );
  }
}
