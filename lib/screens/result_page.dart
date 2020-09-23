import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.category, @required this.bmi, @required this.text});

  final String category;
  final String bmi;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    category,
                    style: category == 'NORMAL'
                        ? kGreenCategoryTextStyle
                        : kYellowCategoryTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kResultTextStyle,
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: kBiggerTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'NEW BMI',
          )
        ],
      ),
    );
  }
}
