import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DateFilter.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DetailsCard.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DetailsScreenHeader.dart';
import 'package:flightbooking/src/presentation/core/widgets/appbar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppApbar().App_Apbar(title: "Ezy Travel"),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Details_screenheader(),
                Datefilter(),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Text("851 Flight Found"),
               ),
                DetailsCard(),
                DetailsCard(IsBottomCard: true,) ,
                SizedBox(height: 30,),
                DetailsCard(),
                DetailsCard(IsBottomCard: true,)
              ],
            ),
          ),
        ));
  }
}
