import 'package:flutter/material.dart';
import 'app_brain.dart';
AppBrain appBrain = AppBrain();
void main() {
  runApp(ExamApp());
}

class ExamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("اختبار"),

        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ExamPage(),
        )

      ),

    );
  }
}

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  List<Widget> answerResult = [

  ];
void checkAnswer (bool whatUserPicked){
  bool correctAnswer = appBrain.getQustionAnswer();
  setState(() {
  if (whatUserPicked == correctAnswer){
    answerResult.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.thumb_up,
            color: Colors.green,
          ),
        ));
  }
  else{
    answerResult.add(
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(Icons.thumb_down,
            color: Colors.red,
    ),
        ));
  }


    appBrain.nextQustion();
  });

}




  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answerResult,
        ),
        Expanded(
          flex: 5,
            child: Column(
              children: [
                Image.asset(appBrain.getQustionImage()),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    appBrain.getQustionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0
                    ),
                  ),
                )
              ],
            )
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FlatButton(
            color: Colors.indigo,
            child: Text(
                "صح",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white
              ),
            ),
            onPressed: () {
              checkAnswer(true);

              //qustionNum = qustionNum+1;
             } ,
          ),
        )
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FlatButton(
            color: Colors.deepOrange,
            child: Text(
              "خطأ",
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white
              ),
            ),
            onPressed: () {
              checkAnswer(false);
              } ,
          ),
        )
        ),
      ],
    );
  }
}

