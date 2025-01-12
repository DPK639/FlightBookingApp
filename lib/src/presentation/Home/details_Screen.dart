import 'dart:convert';

import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/domain/Core/Models/flightDetails.dart';
import 'package:flightbooking/src/domain/Core/data.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DateFilter.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DetailsCard.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DetailsScreenHeader.dart';
import 'package:flightbooking/src/presentation/core/widgets/appbar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key});
  List<Flight_detail> data=Flightdetails_Data.map((e)=>Flight_detail.fromJson(jsonEncode(e))).toList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppApbar().App_Apbar(title: "Ezy Travel"),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Details_screenheader(),
              Datefilter(),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("${data[0].flightdetails[0].onward.length} Flight Found"),
             ),
              Expanded(
                child: ListView.builder(
                  itemCount: data[0].flightdetails[0].onward.length,
                  itemBuilder: (context, index) {
                  return Column(
                   children: [
                     DetailsCard(flightdata: data,Onward_data:data[0].flightdetails[0].onward[index],),
                     DetailsCard(flightdata: data,Onward_data:data[0].flightdetails[0].flightdetailReturn[index],IsBottomCard: true,),
                     SizedBox(height: 30,),
                   ],
                  );
                },),
              )

            ],
          ),
        ));
  }
}
