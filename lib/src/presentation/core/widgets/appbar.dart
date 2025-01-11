import 'package:flutter/material.dart';
import 'package:flightbooking/app/theme/appTheme.dart';

class AppApbar{
 AppBar App_Apbar({required String title,isHome=false}){
    return AppBar(

      backgroundColor: Color_appbar,title:Text(title),actions: [
        isHome?IconButton(onPressed: (){}, icon: Icon(Icons.menu)):SizedBox()
    ],);
  }
}