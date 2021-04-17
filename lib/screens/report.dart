import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Report extends StatelessWidget {
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
              "Report a Problem",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
              child: TextFormField(
                maxLines: 8,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  hintText: "Describe your problem in details ",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: MediaQuery.of(context).size.width,
                height: 80.h,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            border: Border.all(color: Colors.blue)
                        ),
                        width: 120.w,
                        height: 40.h,
                        child: Center(
                          child: Text(
                            "Choose File",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                color: Colors.blue
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Text("Upload screenshot if available" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15.sp),),
                  ],
                ),

              ),

            ),
            SizedBox(height: 30.h,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                  border: Border.all(color: Colors.red)
              ),
              width: 170.w,
              height: 60.h,
              child: Center(
                child: Text(
                  "Report",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
