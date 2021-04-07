import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queuey/controller_view_model.dart';

class ControllView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:_bottomNavigationBar() ,
      body: GetBuilder<ControlHomeViewModel> (
        init: ControlHomeViewModel(),
        builder: (controller) => controller.currentScreen,
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return GetBuilder<ControlHomeViewModel>(
      init: ControlHomeViewModel(),
      builder: (controller) => BottomNavigationBar(
        backgroundColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.home_outlined , color: Colors.white,),
            ),
            label: "",
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Home", style: TextStyle(color: Colors.white)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.notifications_active_outlined,color: Colors.white,),
            ),
            label: "",
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Notifications", style: TextStyle(color: Colors.white)),
            ),
          ),

          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.info_outline,color: Colors.white,),
            ),
            label: "",
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("report", style: TextStyle(color: Colors.white),),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.more_vert_outlined,color: Colors.white,),
            ),
            label: "",
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("about", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
        currentIndex: controller.navigatorValue,
        elevation: 0,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
      ),
    );
  }
}
