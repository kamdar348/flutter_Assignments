import 'package:flutter/material.dart';
import 'package:paymentapp/Screens/home.dart';
import 'package:paymentapp/Screens/notification.dart';
import '../Constants/color_constant.dart';
import '../Constants/text.dart';
import 'balance.dart';
import 'offers.dart';
import 'profile.dart';
import 'reward.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(Appcolorconst.bgcolor),
        appBar: AppBar(
          backgroundColor: Color(Appcolorconst.bgcolor),
          automaticallyImplyLeading: false,
          title: ListTile(
            leading: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assests/Images/image 7.png"),
              ),
            ),
            title: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff343645),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Textwidget(
                        "Search User,ID's etc", 16, 0xffB0BEC5, "Barlow-Bold"),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.search,
                      color: Color(0xffB0BEC5),
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
            trailing: CircleAvatar(
              backgroundColor: const Color(0xff343645),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  );
                },
                child: Stack(
                  children: const [
                    Icon(
                      Icons.notifications,
                      color: Color(0xffB0BEC5),
                      size: 35,
                    ),
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: TabBar(
            labelColor: const Color(0xffFFFFFF),
            indicatorColor: const Color(0xffFFFFFF),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 3.0, color: Color(0xffFFFFFF)),
              insets: EdgeInsets.symmetric(horizontal: 20.0, vertical: 3),
            ),
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Textwidget(
                    "Home",
                    16,
                    0xffFFFFFF,
                    "Barlow-Bold",
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Textwidget(
                    "Balance",
                    16,
                    0xffFFFFFF,
                    "Barlow-Bold",
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Textwidget(
                    "Offers",
                    16,
                    0xffFFFFFF,
                    "Barlow-Bold",
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Textwidget(
                    "Rewards",
                    14,
                    0xffFFFFFF,
                    "Barlow-Bold",
                  ),
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomePage(),
            Balance(),
            Offers(),
            Rewards(),
          ],
        ),
      ),
    );
  }
}
