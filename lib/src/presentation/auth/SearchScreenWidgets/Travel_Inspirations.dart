import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/presentation/auth/SearchScreenWidgets/ImageWithText.dart';
import 'package:flightbooking/src/presentation/core/widgets/PrimaryDropDown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Travel_Inspirations extends StatelessWidget {
  const Travel_Inspirations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Travel Inspirations",style: TextStyle(fontSize: FontSize_Sub_Content,fontWeight: FontWeight.bold),),
           Primarydropdown(dropdownData: [],color: Color_Icon,title: "Dubai",ChangeTextColor: false,),

            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Imagewithtext(CountryName: "Saudi Arabia ", Text1: "From AED867", Text2: "Economy round trip", image: "assets/Travel_Inspirations_Saudi.png"),
              SizedBox(width: 10,),
              Imagewithtext(CountryName: "Kuwait", Text1: "From AED867", Text2: "Economy round trip", image: "assets/Travel_Inspirations_Kuwait.png")

            ],
          ),
        )
      ],),
    );
  }
}
