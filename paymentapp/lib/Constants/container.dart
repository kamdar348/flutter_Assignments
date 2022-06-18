import 'package:flutter/material.dart';
// import 'package:paymentapp/constants/text.dart';

// ignore: non_constant_identifier_names
ContainerWidget(
  // ignore: non_constant_identifier_names
  int Boxbg,
  // ignore: non_constant_identifier_names
  double Boxheight,
  // ignore: non_constant_identifier_names
  double BoxWidth,
  // ignore: non_constant_identifier_names
  double FirtchildHeight,
  // ignore: non_constant_identifier_names
  double FirstChildWidth,
  // ignore: non_constant_identifier_names
  int FirstChildbg,
  // ignore: non_constant_identifier_names
  String IconPath,
  String name,
  double fontSize,
  // ignore: non_constant_identifier_names
  int ColorCode,
  // ignore: non_constant_identifier_names
) {
  return Container(
    decoration: BoxDecoration(
        color: Color(Boxbg), borderRadius: BorderRadius.circular(10)),
    height: Boxheight,
    width: BoxWidth,
    child: Row(
      children: [
        Container(
            height: FirtchildHeight,
            width: FirstChildWidth,
            decoration: BoxDecoration(
                color: Color(FirstChildbg),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(onPressed: () {}, icon: Image.asset(IconPath))),
        const SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: fontSize,
            color: Color(ColorCode),
          ),
        )
      ],
    ),
  );
}

ContainerWidget2(double Height, double Width, int BgColor, String IconPath,
    String name, double fontSize, int ColorCode, String FontFamily) {
  return Column(
    children: [
      Container(
          height: Height,
          width: Width,
          decoration: BoxDecoration(
              color: Color(BgColor), borderRadius: BorderRadius.circular(12)),
          child: IconButton(onPressed: () {}, icon: Image.asset(IconPath))),
      Text(
        name,
        style: TextStyle(
          fontSize: fontSize,
          color: Color(ColorCode),
          fontFamily: FontFamily,
        ),
      ),
    ],
  );
}
