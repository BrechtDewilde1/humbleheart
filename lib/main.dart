import 'package:flutter/material.dart';
import 'Pages/homePage.dart';
import 'Pages/projectsPage.dart';
import 'Pages/homeStayPage.dart';
import 'Pages/aboutPage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/projects': (context) => ProjectsPage(),
        '/homestay': (context) => HomeStayPage(),
        '/about': (context) => AboutPage()
      },
    ),
  );
}
