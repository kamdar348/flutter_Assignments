import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paymentapp/Screens/login.dart';

import '../Constants/color_constant.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assests/Images/Vector.png",
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 57,
              width: 200,
              child: const Text(
                "Instant Pay",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 72, 62, 202),
                    // spreadRadius: 5,
                    blurRadius: 1,
                    offset: Offset(5, 5), // changes position of shadow
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your Perfect Payment Partner",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffDADADA)),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    color: Color(Appcolorconst.primary),
                    size: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    color: Color(Appcolorconst.primary),
                    size: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    color: Color(Appcolorconst.primary),
                    size: 10,
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
