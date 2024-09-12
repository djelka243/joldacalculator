import 'package:flutter/material.dart';
import 'package:joldacalculator/informations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String result = "0";
  String operation = "";
  double num1 = 0;
  double num2 = 0;

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        result = "0";
        num1 = 0;
        num2 = 0;
        operation = "";
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/") {
        num1 = double.parse(result.replaceAll(',', '.'));
        operation = buttonText;
        result = "0";
      } else if (buttonText == "=") {
        num2 = double.parse(result.replaceAll(',', '.'));
        if (operation == "+") {
          result = (num1 + num2).toString();
          if (num1 % 1 == 0 && num2 % 1 == 0) {
            result = (num1 + num2).toInt().toString();
          }
        } else if (operation == "-") {
          result = (num1 - num2).toString();
          if (num1 % 1 == 0 && num2 % 1 == 0) {
            result = (num1 - num2).toInt().toString();
          }
        } else if (operation == "x") {
          result = (num1 * num2).toString();
          if (num1 % 1 == 0 && num2 % 1 == 0) {
            result = (num1 * num2).toInt().toString();
          }
        } else if (operation == "/") {
          result = (num1 / num2).toStringAsFixed(10);
        }
        operation = "";
      } else if (buttonText == "+/-") {
        result = (double.parse(result.replaceAll(',', '.')) * -1).toString();
      } else if (buttonText == "%") {
        result = (double.parse(result.replaceAll(',', '.')) / 100).toString();
      } else {
        if (result == "0") {
          result = buttonText;
        } else {
          result = result + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jolda Calculator', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Informations()),
              );
            },
            icon: Icon(Icons.info),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 12.0,
            ),
            child: Text(
              result,
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  buildButton("AC", Colors.grey, Colors.black),
                  buildButton("+/-", Colors.grey, Colors.black),
                  buildButton("%", Colors.grey, Colors.black),
                  buildButton("/", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("7", Colors.blueGrey, Colors.white),
                  buildButton("8", Colors.blueGrey, Colors.white),
                  buildButton("9", Colors.blueGrey, Colors.white),
                  buildButton("x", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("4", Colors.blueGrey, Colors.white),
                  buildButton("5", Colors.blueGrey, Colors.white),
                  buildButton("6", Colors.blueGrey, Colors.white),
                  buildButton("-", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("1", Colors.blueGrey, Colors.white),
                  buildButton("2", Colors.blueGrey, Colors.white),
                  buildButton("3", Colors.blueGrey, Colors.white),
                  buildButton("+", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("0", Colors.blueGrey, Colors.white),
                  buildButton(",", Colors.blueGrey, Colors.white),
                  buildButton("=", Colors.orange, Colors.white),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }


  Widget buildButton(String buttonText, Color buttonColor, Color textColor) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: const EdgeInsets.all(20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 30.0,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => buttonPressed(buttonText),
        ),
      ),
    );
  }

}
