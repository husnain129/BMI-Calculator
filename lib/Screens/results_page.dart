import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Result",
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(KActiveCardColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      arguments['result'],
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      arguments['textValue'],
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Color(KBottomContainerColor),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Center(
                      child: Text(
                        "Re-Calculate",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
