import 'package:flutter/material.dart';
import 'package:human_calculate/constents.dart';
import 'package:human_calculate/reusable_card.dart';

import 'BottomButton.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text('Your Result', style: kTitleTextStyle))),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Normal',
                          style: kResultTextStyle,
                        ),
                        Text('18.3', style: kBMITextStyle),
                        Text(
                          'Your BMI result is quite low, you should eat more!',
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
