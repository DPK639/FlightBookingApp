import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class Detailsbody extends StatelessWidget {
  const Detailsbody({super.key});

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
                Text("22:23",style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize_Heading),),
                Text("BLR - Bengaluru"),
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
                      child:index==42~/2?
                      Icon(Icons.flight_outlined,color: Color_Icon,): Container(
                        color: index%2==0?Colors.transparent
                            :Colors.grey,
                        height: 1,
                      ),
                    )),
                  ),
                  Text("4h 30m",style: TextStyle(fontSize: FontSize_Content),),

                ],
              ),
            ),
          ),

            SizedBox(
              width: MediaQuery.of(context).size.width/3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("21:55",style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize_Heading),),
                  Text("BLR - Bengaluru"),
                ],
              ),
            ),
        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("2 Stops")],)
      ],
    );
  }
}
