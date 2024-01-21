import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charles Kagwi',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff283540),
      body: Row(
        children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 44),
                color: Color(0xff283540),
                child: Row(
                  children: [Expanded(child: MainContent())],
                ),
              )),
          Expanded(flex: 2, child: Container())
        ],
      ),
    );
  }
}

class QuickAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              "Quick Access",
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
