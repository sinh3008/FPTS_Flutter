import 'package:flutter/material.dart';
import 'package:lab_07_bmi_caculator/constaints.dart';
import 'package:lab_07_bmi_caculator/screen/home/bottom_button.dart';
import 'package:lab_07_bmi_caculator/screen/home/re_use_card.dart';

class ResultPage extends StatelessWidget {
  final ThemeData them = ThemeData();

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CACULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusebleCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '22.1',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Normal BMI range',
                    style: kLabelTextStyle,
                  ),
                  Text('18,5 - 25 kg/m2'),
                  Text(
                    'You hove a normal body weight. Good job!',
                    style: kContentTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xff180f34),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'SAVE RESULT',
                        style: kContentTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CACULATE YOUR BMI',
            ),
          ),
        ],
      ),
    );
  }
}
