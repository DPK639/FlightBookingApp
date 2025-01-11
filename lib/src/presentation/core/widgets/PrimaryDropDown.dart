import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class Primarydropdown extends StatelessWidget {
  List<String> dropdownData;
  String title;
  Color color;
  double FontSize;
  bool ChangeTextColor;
   Primarydropdown({required this.dropdownData,this.title="",this.color=Color_black,this.FontSize=FontSize_Content,this.ChangeTextColor=true});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: TextStyle(color:ChangeTextColor?color:Color_black ,fontSize:FontSize,fontWeight: FontWeight.bold),),
        DropdownButton<String>(
          icon: Icon(Icons.keyboard_arrow_down,color: color,),
          items: dropdownData.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (a) {
          },
        ),
      ],
    );
  }
}
