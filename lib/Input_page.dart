import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:human_calculate/reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(Gender gender){
    if (gender == Gender.male){
      if (maleCardColour == inactiveCardColour){
        maleCardColour = activeCardColor;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    }
    if (gender == Gender.female){
      if (femaleCardColour == inactiveCardColour){
        femaleCardColour = activeCardColor;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MBICalculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(Gender.male);
                        });
                      },
                      child: ReusableCard(
                  colour: maleCardColour,
                  cardChild:
                        IconContent(text: 'MALE', icon: FontAwesomeIcons.mars),
                ),
                    )),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      cardChild: IconContent(
                          text: 'FEMALE', icon: FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
