// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytxt = 10;
  //Button Widget
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return RaisedButton(
      onPressed: () {
        calculation(btntxt);
      },
      child: Text(
        '$btntxt',
        style: TextStyle(
          fontSize: 35,
          color: txtcolor,
        ),
      ),
      shape: const CircleBorder(),
      color: btncolor,
      padding: const EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Calculator
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text('Calculator')),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Calculator display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '$text',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('/', Color.fromRGBO(255, 193, 7, 1), Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('7', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('8', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('9', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('x', Color.fromRGBO(255, 160, 0, 1), Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('4', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('5', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('6', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('-', Color.fromRGBO(255, 160, 0, 1), Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('1', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('2', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('3', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('+', Color.fromRGBO(255, 160, 0, 1), Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //this is button Zero
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: () {
                    calculation('0');
                  },
                  shape: StadiumBorder(),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  color: Colors.grey[850],
                ),
                calcbutton('.', Color.fromARGB(255, 48, 48, 48), Colors.white),
                calcbutton('=', Color.fromRGBO(255, 160, 0, 1), Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  //Calculator logic
  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {
    if (btnText == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}
