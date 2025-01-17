import 'package:flightbooking/app/router/router.dart';
import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flightbooking/src/presentation/Home/search_Screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Booking',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade50,
        colorScheme: ColorScheme.fromSeed(seedColor: Color_appbar),
        useMaterial3: true,
      ),
      home:  SearchScreen(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

