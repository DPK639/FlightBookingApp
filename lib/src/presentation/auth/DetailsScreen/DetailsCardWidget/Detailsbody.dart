import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/domain/Core/Models/flightDetails.dart';
import 'package:flutter/material.dart';

class Detailsbody extends StatelessWidget {
  Onward ReturnData;
   Detailsbody({super.key,required this.ReturnData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Container(
        width: MediaQuery.of(context).size.width/3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ReturnData.timeFrom,style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize_Heading),),
                Text(ReturnData.from),
              ],
            ),
          ),




          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: List.generate(50, (index) => Expanded(
                      child:index==60~/2?
                      Transform.rotate(
                        alignment: Alignment.topLeft,
                          angle: 1.59,
                          child: Icon(Icons.flight_outlined,color: Color_Icon,)): Container(
                        color: index%2==0?Colors.transparent
                            :Colors.grey,
                        height: 1,
                      ),
                    )),
                  ),
                  Text(ReturnData.travelTime,style: TextStyle(fontSize: FontSize_Sub_Content),),

                ],
              ),
            ),
          ),

            SizedBox(
              width: MediaQuery.of(context).size.width/3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(ReturnData.timeTo,style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize_Heading),),
                  Text(ReturnData.to),
                ],
              ),
            ),
        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(ReturnData.stops +" Stops")],)
      ],
    );
  }
}
