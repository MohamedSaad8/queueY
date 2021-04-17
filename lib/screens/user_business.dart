import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queuey/screens/cs_doctor_screen.dart';

class UserBusiness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100.h,
          ),
          Text(
            "QueueY",
            style: TextStyle(fontSize: 48.sp, color: Colors.teal),
          ),
          SizedBox(height: 50.h,),
          CircleAvatar(
            radius: 80.w,
            backgroundImage: ExactAssetImage("assets/images/pic.jpeg"),
          ),
          SizedBox(height: 50.h,),
          Text(
            "Get in touch with QueueY",
            style: TextStyle(fontSize: 24.sp, color: Colors.teal , fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 70.h,),
          Text(
            "Sign Up as:",
            style: TextStyle(fontSize: 24.sp, color: Colors.black , fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.h,),
          InkWell(
            onTap: (){

            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.teal,
                  border: Border.all(color: Colors.teal)
              ),
              width: 170.w,
              height: 60.h,
              child: Center(
                child: Text(
                  "User",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h,),
          InkWell(
            onTap: (){

            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.teal,
                  border: Border.all(color: Colors.teal)
              ),
              width: 170.w,
              height: 60.h,
              child: Center(
                child: Text(
                  "Business",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
