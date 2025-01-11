import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class Datefilter extends StatelessWidget {
   Datefilter({super.key});



  var data=[
    {
    "date":"Mar 22 - Mar 23",
    "Code":" From AED 741"
  },{
    "date":"Mar 23 - Mar 24",
    "Code":" From AED 721"
  },{
    "date":"Mar 24 - Mar 25",
    "Code":"From AED 750"
  }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i in data)
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Color_white,
                      border: Border.all(color:Color_grey ),
                        borderRadius: BorderRadius.circular(20)),
                    height: 50,
                    width: (MediaQuery.of(context).size.width / 3) -10,
                    child: Container(
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              i["date"].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              i["Code"].toString(),
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            )
        ],
      ),
    );
  }
}
