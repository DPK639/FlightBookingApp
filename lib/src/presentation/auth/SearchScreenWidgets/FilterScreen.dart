import 'package:flightbooking/src/presentation/core/Services/DateServices.dart';
import 'package:flightbooking/src/presentation/core/widgets/PrimaryTextForm.dart';
import 'package:flutter/cupertino.dart';

class Filterscreen extends StatelessWidget {
   Filterscreen({super.key});

  final Departure_Controller=TextEditingController(text: dateFormate.format(DateTime.now()).toString());
  final Return_Controller=TextEditingController(text:dateFormate.format(DateTime.now()).toString());
  final Travelers_Controller=TextEditingController(text: "1 Passenger");
  final Cabin_Class_Controller=TextEditingController(text: "Economy Class");



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryTextForm(title: "Departure",Controller: Departure_Controller,DateTimeSelect: true,),
              PrimaryTextForm(title: "Return",Controller: Return_Controller,DateTimeSelect: true,) ,
             ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            PrimaryTextForm(title: "Travelers",Controller: Travelers_Controller,),
            PrimaryTextForm(title: "Cabin Class",Controller: Cabin_Class_Controller,),

          ],)
        ],
      ),
    );
  }
}
