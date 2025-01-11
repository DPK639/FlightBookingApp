import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/presentation/core/widgets/PrimaryDropDown.dart';
import 'package:flutter/material.dart';

class Details_screenheader extends StatelessWidget {
  const Details_screenheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color_white,
        child: Column(
          children: [
            Text("BLR - Bengaluru to DXB - Dubai",style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize_Content),),
        Text("Departure: Sat, 23 Mar - Return: Sat, 23 Mar"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("(Round Trip)",style: TextStyle(color: Color_orange),),
           SizedBox(width: 10,),
            Text("Modify Search",style: TextStyle(color: Color_Icon,decoration: TextDecoration.underline,),),

          ],
        ),
            Divider(color: Color_grey,endIndent: 8,indent: 8,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:8,horizontal: 20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Primarydropdown(dropdownData: [],title: "Sort",color: Color_black,FontSize: FontSize_Sub_Content,),

                    Text("Non - Stop ",style: TextStyle(fontSize: FontSize_Sub_Content,fontWeight: FontWeight.bold)),

                    Text("Filter",style: TextStyle(fontSize: FontSize_Sub_Content,fontWeight: FontWeight.bold)),

                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}


