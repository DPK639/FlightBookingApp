import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class Secondarybutton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Widget? child;
  final Color? color;
  const Secondarybutton({
    super.key,
    required this.text,
    required this.ontap,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
          side: BorderSide(width: 1.0, color: color??Color_appbar),
          elevation: 1,
          backgroundColor:Colors.transparent,
          foregroundColor: Color_white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        onPressed: ontap,
        child: child ?? Text(text,style: TextStyle(fontSize: FontSize_Sub_Content,color: color??Color_black),),
      ),
    );
  }
}

