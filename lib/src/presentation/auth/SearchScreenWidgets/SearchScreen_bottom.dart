import 'package:flutter/cupertino.dart';
import 'package:flightbooking/app/theme/appTheme.dart';

class SearchScreen_bottom extends StatelessWidget {
  const SearchScreen_bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Flight & Hotel Packages",style: TextStyle(fontSize: FontSize_Sub_Content,fontWeight: FontWeight.bold),),
           ),
           IntrinsicHeight(
               child: Container(
             child: Image.asset("assets/bottomIMG.png"),
           ))
         ],
        ),
      ),
    );
  }
}
