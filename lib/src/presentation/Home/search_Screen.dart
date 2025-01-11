import 'package:flightbooking/app/router/routerConstants.dart';
import 'package:flightbooking/src/presentation/Home/details_Screen.dart';
import 'package:flightbooking/src/presentation/auth/SearchScreenWidgets/FilterScreen.dart';
import 'package:flightbooking/src/presentation/auth/SearchScreenWidgets/HeaderImage.dart';
import 'package:flightbooking/src/presentation/auth/SearchScreenWidgets/SearchScreen_bottom.dart';
import 'package:flightbooking/src/presentation/auth/SearchScreenWidgets/SerachFlight.dart';
import 'package:flightbooking/src/presentation/auth/SearchScreenWidgets/Travel_Inspirations.dart';
import 'package:flightbooking/src/presentation/core/widgets/appbar.dart';
import 'package:flightbooking/src/presentation/core/widgets/primary_Button.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:AppApbar().App_Apbar(title: "Search Flights",isHome: true),
      body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Headerimage(),
            Serachflight(),
            Filterscreen(),

            PrimaryButton(text: "Search Flights", ontap: (){
              Navigator.pushNamed(context, RouterConstants.Details_Screen);
            }),
            Travel_Inspirations(),
            SearchScreen_bottom()
          ],
        ),
      ),
    ),));
  }
}
