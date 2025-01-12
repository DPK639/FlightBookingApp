import 'package:flightbooking/app/app.dart';
import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color_Icon,
  ));
  runApp(const MyApp());
}