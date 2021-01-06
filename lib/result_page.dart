import 'package:flutter/material.dart';
import 'constants.dart';
import 'Reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult,@required this.interpretation ,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment:Alignment.bottomCenter,
                child: Text(
                  'YOUR RESULT',
                  style: kTitleStyle,
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: kInactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),
                  style: kResultTextStyle,),
                  Text(bmiResult,
                  style: kBMITextStyle ,
                  ),
                  Text(interpretation,
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,),
                ],
              ),
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE_CALCULATE')
        ],
      )
    );
  }
}
