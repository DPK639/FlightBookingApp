import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DetailsCardWidget/DetailHeader.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DetailsCardWidget/DetailsFooter.dart';
import 'package:flightbooking/src/presentation/auth/DetailsScreen/DetailsCardWidget/Detailsbody.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  bool IsBottomCard;
   DetailsCard({this.IsBottomCard=false});

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(IsBottomCard?0:20),
        topRight: Radius.circular(IsBottomCard?0:20),
        bottomLeft: Radius.circular(!IsBottomCard?0:20),
        bottomRight: Radius.circular(!IsBottomCard?0:20))),
      color:Color_white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: IntrinsicHeight(
          child: Container(
            child: Column(
              children: [
                Visibility(
                  visible: IsBottomCard,
                    child: Divider()),
                Detailsheader(),
                Detailsbody(),
            Visibility(
              visible: IsBottomCard,child: Detailsfooter())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
