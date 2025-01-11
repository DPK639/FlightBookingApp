import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/presentation/core/widgets/PrimaryDropDown.dart';
import 'package:flightbooking/src/presentation/core/widgets/SecondaryButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailsfooter extends StatelessWidget {
  const Detailsfooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
    Row(
    children: List.generate(50, (index) => Expanded(
      child:
      Container(
        color: index%2==0?Colors.transparent
            :Colors.grey,
        height: 1,
      ),
    )),
    ),
SizedBox(height: 8,),
Row(
  children: [
    Secondarybutton(text: "Cheapest", ontap: (){},color: Color_Icon,),
   SizedBox(width:10),
    Secondarybutton(text: "Refundable", ontap: (){},color: Colors.blue,),
    Spacer(),
    Primarydropdown(dropdownData: [],title: "Flight Details",color: Color_orange,FontSize: FontSize_Sub_Content,),
  SizedBox(height: 60,)

  ],
)
      ],
    );
  }
}
