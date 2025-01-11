import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Widget? child;
  final Color? color;
  const PrimaryButton({
    super.key,
    required this.text,
    required this.ontap,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: color ?? Color_button,
        foregroundColor: Color_white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onPressed: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: child ?? Text(text,style: TextStyle(fontSize: FontSize_Content),),
      ),
    );
  }
}
