
import 'package:flightbooking/app/router/routerConstants.dart';
import 'package:flightbooking/src/presentation/Home/details_Screen.dart';
import 'package:flutter/material.dart';
import '../../src/presentation/Home/search_Screen.dart';

enum PageRouteAnimation { fade, scale, rotate, slide, slideBottomTop }

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstants.Details_Screen:
        return buildPageRoute(DetailsScreen(), PageRouteAnimation.fade);
      case RouterConstants.Search_Screen:
        return buildPageRoute(SearchScreen(), PageRouteAnimation.fade);
        default:
        return MaterialPageRoute<Scaffold>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static Route<T> buildPageRoute<T>(
      Widget? child,
      PageRouteAnimation? pageRouteAnimation,
      ) {
    if (pageRouteAnimation != null) {
      if (pageRouteAnimation == PageRouteAnimation.fade) {
        return PageRouteBuilder(
          pageBuilder: (c, a1, a2) => child!,
          transitionsBuilder: (c, anim, a2, child) =>
              FadeTransition(opacity: anim, child: child),
          transitionDuration: const Duration(milliseconds: 300),
        );
      } else if (pageRouteAnimation == PageRouteAnimation.rotate) {
        return PageRouteBuilder(
          pageBuilder: (c, a1, a2) => child!,
          transitionsBuilder: (c, anim, a2, child) =>
              RotationTransition(child: child, turns: ReverseAnimation(anim)),
          transitionDuration: const Duration(milliseconds: 700),
        );
      } else if (pageRouteAnimation == PageRouteAnimation.scale) {
        return PageRouteBuilder(
          pageBuilder: (c, a1, a2) => child!,
          transitionsBuilder: (c, anim, a2, child) =>
              ScaleTransition(child: child, scale: anim),
          transitionDuration: const Duration(milliseconds: 700),
        );
      } else if (pageRouteAnimation == PageRouteAnimation.slide) {
        return PageRouteBuilder(
          pageBuilder: (c, a1, a2) => child!,
          transitionsBuilder: (c, anim, a2, child) => SlideTransition(
            child: child,
            position: Tween(
                begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
                .animate(anim),
          ),
          transitionDuration: const Duration(milliseconds: 450),
        );
      } else if (pageRouteAnimation == PageRouteAnimation.slideBottomTop) {
        return PageRouteBuilder(
          pageBuilder: (c, a1, a2) => child!,
          transitionsBuilder: (c, anim, a2, child) => SlideTransition(
            child: child,
            position: Tween(
                begin: const Offset(0.0, 1.0), end: const Offset(0.0, 0.0))
                .animate(anim),
          ),
          transitionDuration: const Duration(milliseconds: 350),
        );
      }
    }
    return MaterialPageRoute<T>(builder: (_) => child!);
  }
}
