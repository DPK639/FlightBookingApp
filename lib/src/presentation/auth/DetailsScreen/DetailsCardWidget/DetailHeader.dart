import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flightbooking/src/domain/Core/Models/flightDetails.dart';

class Detailsheader extends StatelessWidget {
  Onward Onward_data;
   Detailsheader({required this.Onward_data});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset("assets/Flight_Icon.png"),
      SizedBox(width: 10,),
      Text("Onward - ${Onward_data.flight}"),
      Spacer(),
      Text(Onward_data.flightCode,style: TextStyle(color:Color_Icon ,fontSize: FontSize_Sub_Content,fontWeight: FontWeight.bold),)

    ],
    );
  }
}
