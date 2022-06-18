import 'package:flutter/material.dart';
import 'package:paymentapp/Constants/color_constant.dart';
import 'package:paymentapp/Screens/dashboard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(Appcolorconst.bgcolor),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assests/Images/back.png",
                    width: double.infinity,
                    // height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 170,
                    left: 60,
                    child: Image.asset(
                      "assests/Images/lo.png",
                      width: 230,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 70,
                    child: Column(
                      children: const [
                        Text(
                          "LOGIN WITH YOUR\nMOBILE PHONE\nNUMBER",
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 25,
                            fontFamily: "Nunito-Bold",
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(14),
                width: 350,
                height: 80,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    color: Color(0xff858891),
                    fontFamily: "LeagueSpartan",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  initialValue: "Enter Your Mobile Number",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffEDEFFF),
                    prefix: Text(
                      "+92 |     ",
                      style: TextStyle(color: Color(Appcolorconst.primary)),
                    ),
                    border: OutlineInputBorder(
                        // borderRadius: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(14),
                  alignment: Alignment.center,
                  height: 55,
                  width: 320,
                  child: const Text(
                    "Verify",
                    style: TextStyle(
                        fontFamily: "LeagueSparton",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      color: Color(Appcolorconst.primary),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Your Personal details are safe with us",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7C82BA)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Read our Privacy Policy and Terms and Conditions",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7C82BA)),
              )
            ],
          ),
        ));
  }
}
