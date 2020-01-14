import 'package:flutter_market/Homescreen.dart';

import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';

final routes = <String, WidgetBuilder>{
   
   Homescreen.tag: (context)   => Homescreen(),
   
  };


void main() => runApp(
  new MaterialApp(
  debugShowCheckedModeBanner: false,
     home: AnimatedSplash(
            imagePath: 'assets/logonews.png',
              home: Homescreen(),
            duration: 2500,
            type: AnimatedSplashType.StaticDuration,
           ),
    routes: routes),
    );
