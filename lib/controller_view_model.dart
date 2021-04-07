import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:queuey/screens/about.dart';
import 'package:queuey/screens/doctor_screen.dart';
import 'package:queuey/screens/notifications.dart';
import 'package:queuey/screens/report.dart';
class ControlHomeViewModel extends GetxController
{
  int _navigatorValue = 0 ;
  int get navigatorValue => _navigatorValue ;
  Widget _currentScreen = DoctorScreen() ;
  Widget get currentScreen => _currentScreen ;

  void changeSelectedValue(int currentIndex){
    _navigatorValue = currentIndex ;
    switch(currentIndex)
    {
      case 0 : _currentScreen =  DoctorScreen();
      break;
      case 1 : _currentScreen =  Notifications();
      break;
      case 2 : _currentScreen =  Report();
      break;
      case 3 : _currentScreen =  About();
      break;


    }
    update();
  }
}