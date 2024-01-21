import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 24),
      children: [
        Text(
          "Welcome!",
          style: TextStyle(fontSize: 44, color: Colors.white),
        ),
        SizedBox(
          height: 44,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 58,
              backgroundImage: AssetImage("assets/images/profile.png"),
            )),
        SizedBox(
          height: 12,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "I am",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              "Charles Kagwi,",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              "a passionate mobile developer",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 28,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white,
                  size: 28,
                )),
            SizedBox(
              width: 12,
            ),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 28,
                )),
            SizedBox(
              width: 12,
            ),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.mailchimp,
                  color: Colors.white,
                  size: 28,
                )),
            SizedBox(
              width: 12,
            ),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                  size: 28,
                ))
          ],
        ),
        SizedBox(
          height: 44,
        ),
        Text(
          "Am passionate about these technologies:",
          style: TextStyle(
              color: Colors.amber, fontFamily: GoogleFonts.lato().fontFamily),
        ),
        Divider(
          thickness: .5,
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/flutter.png",
                  height: 77,
                  width: 77,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Flutter",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              width: 44,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/dart.png",
                  height: 77,
                  width: 77,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Dart",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 44,
        ),
        Text(
          "I enjoyed working on these projects:",
          style: TextStyle(
              color: Colors.amber, fontFamily: GoogleFonts.lato().fontFamily),
        ),
        Divider(
          thickness: .5,
        ),
        SizedBox(
          height: 12,
        ),
        GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.5),
          children: [
            ProjectCard(
                image: "tsedey",
                title: "Tsedey Mobile Banking",
                description: "A mobile app for Tsedey bank based in Ethiopia"),
            ProjectCard(
                image: "visionfund",
                title: "VisionFund MFI Banking",
                description: "A mobile app for VisionMFI based in Ethiopia")
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const ProjectCard(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/$image.png",
          height: 200,
          width: 500,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 14,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              description,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.lato().fontFamily),
            )
          ],
        )
      ],
    );
  }
}
