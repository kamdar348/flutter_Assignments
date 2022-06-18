import 'package:flutter/material.dart';
import '../Constants/color_constant.dart';
import '../Constants/container.dart';
import '../constants/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Appcolorconst.bgcolor),
      body: ListView(
        children: [
          ListTile(
            title: Textwidget(
                "Money Transfer", 16, 0xffFFFFFF, "LeagueSpartan-Regular"),
            trailing: Container(
              padding: const EdgeInsets.only(left: 5),
              height: 20,
              width: 55,
              decoration: BoxDecoration(
                  color: const Color(0xff343645),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Textwidget("More  >", 12, 0xff696D78, "Nunito"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
            ),
            child: Row(
              children: [
                ContainerWidget(
                  (0xff5B2E62),
                  43,
                  170,
                  43,
                  43,
                  (0xff4d3473),
                  "assests/Icons/icon7.png",
                  "Scan QR Code",
                  14,
                  (0xffFFFFFF),
                ),
                const SizedBox(
                  width: 15,
                ),
                ContainerWidget(
                  (0xff2E624C),
                  43,
                  160,
                  43,
                  43,
                  (0xff277360),
                  "assests/Icons/icon9.png",
                  "Send to Contact",
                  14,
                  (0xffFFFFFF),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 10),
            child: Row(
              children: [
                ContainerWidget(
                  (0xff5E622E),
                  43,
                  170,
                  43,
                  43,
                  (0xff617a27),
                  "assests/Icons/icon2.png",
                  "Send To Bank",
                  14,
                  (0xffFFFFFF),
                ),
                const SizedBox(
                  width: 15,
                ),
                ContainerWidget(
                  (0xff622E3A),
                  43,
                  160,
                  43,
                  43,
                  (0xff73274e),
                  "assests/Icons/icon8.png",
                  "Self Transfer",
                  14,
                  (0xffFFFFFF),
                ),
              ],
            ),
          ),
          ListTile(
            title: Textwidget("Reacharge & Bill Payment", 16, 0xffFFFFFF,
                "LeagueSpartan-Regular"),
            trailing: Container(
              padding: const EdgeInsets.only(left: 5),
              height: 20,
              width: 55,
              decoration: BoxDecoration(
                  color: const Color(0xff343645),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Textwidget("More  >", 12, 0xff696D78, "Nunito"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
            ),
            child: Row(
              children: [
                ContainerWidget(
                  (0xff32652A),
                  43,
                  170,
                  43,
                  43,
                  (0xff33734a),
                  "assests/Icons/icon3.png",
                  "Mobile Reacharge",
                  14,
                  (0xffFFFFFF),
                ),
                const SizedBox(
                  width: 15,
                ),
                ContainerWidget(
                  (0xff652A5F),
                  43,
                  160,
                  43,
                  43,
                  (0xff7c375a),
                  "assests/Icons/icon4.png",
                  "Electricity Bill",
                  14,
                  (0xffFFFFFF),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 10),
            child: Row(
              children: [
                ContainerWidget(
                  (0xff652A2A),
                  43,
                  170,
                  43,
                  43,
                  (0xff614a2d),
                  "assests/Icons/icon5.png",
                  "DTH Reacharge",
                  14,
                  (0xffFFFFFF),
                ),
                const SizedBox(
                  width: 20,
                ),
                ContainerWidget(
                  (0xff2A4065),
                  43,
                  150,
                  43,
                  43,
                  (0xff4a3f6b),
                  "assests/Icons/icon6.png",
                  "Postpaid Bill",
                  14,
                  (0xffFFFFFF),
                ),
              ],
            ),
          ),
          ListTile(
            title: Textwidget(
                "Ticket Booking", 16, 0xffFFFFFF, "LeagueSpartan-Regular"),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
            ),
            child: Row(
              children: [
                ContainerWidget2(
                    50,
                    60,
                    0xff242042,
                    "assests/Icons/video-play.png",
                    "Movies",
                    12,
                    0xffB0BEC5,
                    "Barlow-Bold"),
                const SizedBox(
                  width: 5,
                ),
                ContainerWidget2(50, 60, 0xff242042, "assests/Icons/train.png",
                    "Train", 12, 0xffB0BEC5, "Barlow-Bold"),
                const SizedBox(
                  width: 5,
                ),
                ContainerWidget2(50, 60, 0xff242042, "assests/Icons/bus.png",
                    "Bus", 12, 0xffB0BEC5, "Barlow-Bold"),
                const SizedBox(
                  width: 10,
                ),
                ContainerWidget2(
                    50,
                    60,
                    0xff242042,
                    "assests/Icons/airplane.png",
                    "Flights",
                    12,
                    0xffB0BEC5,
                    "Barlow-Bold"),
                const SizedBox(
                  width: 5,
                ),
                ContainerWidget2(50, 60, 0xff242042, "assests/Icons/car.png",
                    "Car", 12, 0xffB0BEC5, "Barlow-Bold"),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          ListTile(
            title: Textwidget(
                "More Services", 16, 0xffFFFFFF, "LeagueSpartan-Regular"),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
            ),
            child: Row(
              children: [
                ContainerWidget2(65, 70, 0xff242042, "assests/Icons/frame.png",
                    "Invest", 12, 0xffB0BEC5, "Barlow-Bold"),
                const SizedBox(
                  width: 10,
                ),
                ContainerWidget2(60, 65, 0xff242042, "assests/Icons/group.png",
                    "Loans", 12, 0xffB0BEC5, "Barlow-Bold"),
                const SizedBox(
                  width: 10,
                ),
                ContainerWidget2(60, 65, 0xff242042, "assests/Icons/Heart.png",
                    "Insurance", 12, 0xffB0BEC5, "Barlow-Bold"),
                const SizedBox(
                  width: 10,
                ),
                ContainerWidget2(
                    60,
                    65,
                    0xff242042,
                    "assests/Icons/smart-car.png",
                    "Fastag",
                    12,
                    0xffB0BEC5,
                    "Barlow-Bold"),
              ],
            ),
          ),
          ListTile(
            title: Textwidget(
                "Recent Transactions", 16, 0xffFFFFFF, "LeagueSpartan-Regular"),
            trailing: Container(
              padding: const EdgeInsets.only(left: 7, top: 12),
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color(0xff08348a),
                  borderRadius: BorderRadius.circular(5)),
              child: Textwidget("Recieve Money", 13, 0xffDADADA, "Nunito-Bold"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assests/Images/image 1.png"),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assests/Images/dp 3.png"),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assests/Images/image 9.png"),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assests/Images/image 11.png"),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assests/Images/image 4.png"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
