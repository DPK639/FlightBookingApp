import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/domain/Core/Models/TripTypeModel.dart';
import 'package:flutter/material.dart';

class Headerimage extends StatelessWidget {
  const Headerimage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tripetype> data = [
      Tripetype(type: 1, name: "Round Trip"),
      Tripetype(type: 2, name: "One Way"),
      Tripetype(type: 3, name: "Multi-City")
    ];

    return Container(
      height: 180,
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/TopIMG.png",fit: BoxFit.fill,),
          ),
          Positioned(
            top: 10,
            left: 20,
            child: Text(
              "Let’s start your trip",
              style: TextStyle(
                  color: Color_white,
                  fontSize: FontSize_Content,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom:10,
            right: 15,
            left: 15,
            child: Container(
              decoration: BoxDecoration(
               boxShadow: [BoxShadow(color: Color_grey,blurRadius: 10,spreadRadius: 0.5,offset: Offset(0, 10))],
                  color: Color_white,
                  borderRadius: BorderRadius.circular(10)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i in data)
                    Center(
                      child: Container(

                        decoration: BoxDecoration(
                            color: i.type==2?Color_button:Color_white,
                           // color: ,
                            borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: (MediaQuery.of(context).size.width / 3) - 10,
                          child: Container(
                            child: Center(
                              child: Text(
                                i.name.toString(),
                                style: TextStyle(fontSize: FontSize_Sub_Content,fontWeight: FontWeight.bold,color: i.type==2?Color_white:Color_button),
                              ),
                            ),
                          )),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
