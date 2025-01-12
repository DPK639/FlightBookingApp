import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class Imagewithtext extends StatelessWidget {
  String CountryName;
  String image;
  String Text1;
  String Text2;
   Imagewithtext({super.key,required this.CountryName,required this.Text1,required this.Text2,required this.image});

  @override
  Widget build(BuildContext context) {
    return   IntrinsicHeight(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
           // width: MediaQuery.of(context).size.width/2,

            child: Image.asset("$image",fit: BoxFit.fill,),),
          Positioned(bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Text1,style: TextStyle(color: Color_white,fontSize: FontSize_Sub_Content),),
                  Text(Text2,style: TextStyle(color: Color_white,fontSize: FontSize_Sub_Content),),
                  Text(CountryName,style: TextStyle(color: Color_white,fontSize: FontSize_Content,fontWeight: FontWeight.bold),),

                ],
              )),
        ],
      ),
    );
  }
}
