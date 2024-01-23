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
      debugShowCheckedModeBanner: false,
      title: 'Charles Kagwi',
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scrollbarTheme: ScrollbarThemeData(
            interactive: true,
            radius: const Radius.circular(10.0),
            thumbColor: MaterialStateProperty.all(
              Colors.amber,
            ),
            thickness: MaterialStateProperty.all(0),
            minThumbLength: 100,
          )),
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
          Expanded(
              flex: MediaQuery.of(context).size.width <= 700 ? 0 : 2,
              child: Container()),
          Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [Expanded(child: MainContent())],
                ),
              )),
          Expanded(
              flex: MediaQuery.of(context).size.width <= 700 ? 0 : 2,
              child: Container())
        ],
      ),
    );
  }
}

class QuickAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Quick Access",
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            )
          ],
        )
      ],
    );
  }
}
