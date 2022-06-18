import 'package:flutter/material.dart';

import '../Constants/color_constant.dart';
import '../Constants/text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Appcolorconst.bgcolor),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff1F222A),
                  borderRadius: BorderRadius.circular(20)),
              height: 230,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        "assests/Images/profile.png",
                      ),
                    ),
                    title: Row(
                      children: [
                        Textwidget("Elsa", 40, 0xffFFFFFF, "Nunito-Bold"),
                        SizedBox(
                          width: 20,
                        ),
                        Image(image: AssetImage("assests/Images/won.png"))
                      ],
                    ),
                    trailing: Image(
                        image: AssetImage('assests/Images/close-circle.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 67,
                          child: Column(
                            children: [
                              Center(
                                child: Textwidget("1,208", 25, 0xff4D5DFA,
                                    "LeagueSpartan-Bold"),
                              ),
                              Center(
                                child: Textwidget("Transactions", 10,
                                    0xffB0BEC5, "LeagueSpartan-Bold"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 70,
                          width: 67,
                          child: Column(
                            children: [
                              Center(
                                child: Textwidget("726", 25, 0xff4D5DFA,
                                    "LeagueSpartan-Bold"),
                              ),
                              Center(
                                child: Textwidget("Points", 10, 0xffB0BEC5,
                                    "LeagueSpartan-Bold"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 50,
                          child: Column(
                            children: [
                              Center(
                                child: Textwidget(
                                    "8", 25, 0xff4D5DFA, "LeagueSpartan-Bold"),
                              ),
                              Center(
                                child: Textwidget("Rank", 10, 0xffB0BEC5,
                                    "LeagueSpartan-Bold"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff343645),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Textwidget(
                                      "Explore", 16, 0xffFFFFFF, "Barlow-Bold"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: Color(0xffFFFFFFFF),
                                    size: 25,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff343645)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Textwidget("Edit Profile", 16, 0xffFFFFFF,
                                    "Barlow-Bold"),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.account_box_outlined,
                                  color: Color(0xffB0BEC5),
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff343645),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Textwidget(
                                    "Setting", 16, 0xffFFFFFF, "Barlow-Bold"),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.settings,
                                  color: Color(0xffB0BEC5),
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff343645),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Textwidget(
                                    "Share", 16, 0xffFFFFFF, "Barlow-Bold"),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.share,
                                  color: Color(0xffB0BEC5),
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff1F222A),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 300,
              child: Column(
                children: [
                  ListTile(
                    leading:
                        Image(image: AssetImage("assests/Icons/icon6.png")),
                    title: Textwidget(
                        "All Transactions", 18, 0xffFFFFFF, "Nunito-Bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assests/Icons/p1.png")),
                    title: Textwidget(
                        "Pending Transactions", 18, 0xffFFFFFF, "Nunito-Bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assests/Icons/p3.png"),
                    ),
                    title: Textwidget(
                        "Refund Status", 18, 0xffFFFFFF, "Nunito-bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assests/Icons/p2.png"),
                    ),
                    title: Textwidget(
                        "Raise an issue", 18, 0xffFFFFFF, "Nunito-bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assests/Icons/p4.png"),
                    ),
                    title: Textwidget(
                        "Help and Support", 18, 0xffFFFFFF, "Nunito-bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff1F222A),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 200,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage("assests/Icons/p1.png"),
                    ),
                    title:
                        Textwidget("About Us", 18, 0xffFFFFFF, "Nunito-bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assests/Icons/p3.png"),
                    ),
                    title: Textwidget(
                        "Terms And Condition", 18, 0xffFFFFFF, "Nunito-bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assests/Icons/p2.png"),
                    ),
                    title:
                        Textwidget("Feedback", 18, 0xffFFFFFF, "Nunito-bold"),
                    trailing: Image(image: AssetImage("assests/Icons/p6.png")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
