import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainContent extends StatelessWidget {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        AppBar(
          title: Text(
            "Welcome",
            style: TextStyle(
                color: Colors.brown, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Row(
                  children: [Text("Resume"), Icon(Icons.download)],
                ))
          ],
        ),
        Expanded(
            child: Scrollbar(
                controller: _controller,
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          radius: 58,
                          backgroundImage:
                              AssetImage("assets/images/profile.png"),
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.white),
                            text: "I am",
                            children: [
                          TextSpan(
                              text: " Charles Kagwi",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28)),
                          TextSpan(text: ", a passionate mobile developer")
                        ])),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                              size: 24,
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                              size: 24,
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.mailchimp,
                              color: Colors.white,
                              size: 24,
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                              size: 24,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    Text(
                      "Tech Stack",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.amber,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 20,
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
                      "Projects",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.amber,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.of(context).size.width <= 700 ? 1 : 2,
                          childAspectRatio: 1.5),
                      children: [
                        ProjectCard(
                            image: "tsedey",
                            title: "Tsedey Mobile Banking",
                            description:
                                "A mobile app for Tsedey bank based in Ethiopia"),
                        ProjectCard(
                            image: "visionfund",
                            title: "VisionFund MFI Banking",
                            description:
                                "A mobile app for VisionMFI based in Ethiopia")
                      ],
                    ),
                  ],
                )))
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
