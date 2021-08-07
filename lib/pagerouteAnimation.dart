import 'package:flutter/material.dart';

Route pageanimation(pages) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryanimation) {
    return pages;
  }, transitionsBuilder: (context, animation, secondaryanimation, child) {
    return SlideTransition(
      position:
          animation.drive(Tween(begin: Offset(0.9, 0.0), end: Offset.zero)),
      child: child,
    );
  });
}
