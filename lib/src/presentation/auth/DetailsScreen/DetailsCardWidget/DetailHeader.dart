import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailsheader extends StatelessWidget {
  const Detailsheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset("assets/Flight_Icon.png"),
      SizedBox(width: 10,),
      Text("Onward - Garuda Indonesia"),
      Spacer(),
      Text("AED 409",style: TextStyle(color:Color_Icon ,fontSize: FontSize_Sub_Content,fontWeight: FontWeight.bold),)

    ],
    );
  }
}
