import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/presentation/core/Services/DateServices.dart';
import 'package:flutter/material.dart';


class PrimaryTextForm extends StatelessWidget {
  TextEditingController Controller;
  String title;
  bool enabled;
  bool DateTimeSelect;

  PrimaryTextForm({
    required this.Controller,
    required this.title,
    this.enabled = true,
    this.DateTimeSelect = false,
  });


  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 80,
        width: MediaQuery.of(context).size.width/2-20,
        child: TextFormField(
          controller: Controller,
          readOnly: DateTimeSelect,
          decoration: InputDecoration(
            suffixIcon:DateTimeSelect? IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed:  ()=>_selectDate(context)):null,
            label: Container(
              color: enabled ? Controller.text==""?Color_white:Color_appbarLight : Color_black, child: Text(title),),
            enabled: enabled,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color_black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      );
  }



  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2050),
    );
    if (picked != null) {
      //setState(() {
      Controller.text= dateFormate.format(picked).toString();
     // });
    }
  }
}

