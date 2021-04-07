import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: 50.h,
            ),
            Text(
              "About QueueY",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "QueueY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.teal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "QueueY is a smart solution represented on E-queueing system ,akes Queue of one!",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.sp,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Vision",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.teal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "make day to day tasks more easier, smarter and accessible",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.sp,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Mission",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.teal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Enable Easy Queueing experience booking",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.sp,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
