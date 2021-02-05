import 'package:flutter/material.dart';
import 'package:trivia/question.dart';
import 'score_screen.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionList = Question.getQuestionList();

  void verifyResponse() {
    if (answer == questionList[index].answer) {
      score++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        centerTitle: true,
        title: Image(
          image: AssetImage('lib/assets/logo-bar.png'),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pergunta $index',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  questionList[index].questionText,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    title: Text(questionList[index].option1),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    title: Text(questionList[index].option2),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 3,
                    groupValue: answer,
                    title: Text(questionList[index].option3),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 4,
                    groupValue: answer,
                    title: Text(questionList[index].option4),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, -1),
              ),
            ]),
            child: Center(
              child: FlatButton(
                height: 39,
                onPressed: () {
                  verifyResponse();
                  if (index < questionList.length - 1) {
                    setState(() {
                      index++;
                      answer = 0;
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScoreScreen(
                              result: score, maximum: questionList.length)),
                    );
                  }
                },
                color: Color(0xffDA0175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Responder',
                  style: TextStyle(fontSize: 16),
                ),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
