import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queuey/screens/user_business.dart';

class SignInUpScreen extends StatelessWidget {
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
          SizedBox(height: 70.h,),
            InkWell(
              onTap: (){
                Get.to(()=> UserBusiness());
              },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: Colors.teal)
              ),
              width: 170.w,
              height: 60.h,
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                    color: Colors.teal
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 70.h,),
          InkWell(
            onTap: (){
              Get.to(()=> UserBusiness());
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
                  "Sign Up",
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
