import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MBICalculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor,)
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor,),
                ),
              ],
            )),
            Expanded(child: ReusableCard(colour: activeCardColor,),),
            Expanded(child: Row(children: [
              Expanded(
                child: ReusableCard(colour: activeCardColor,)
              ),
              Expanded(
                child: ReusableCard(colour: activeCardColor,)
              ),
            ],)),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top:10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        )
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}