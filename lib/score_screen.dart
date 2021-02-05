import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum})
      : super(key: key);

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
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 113.0,
                ),
                Text(
                  'VOCÊ ACERTOU',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff263238),
                  ),
                ),
                SizedBox(
                  height: 59.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$result',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffE83B86),
                      ),
                    ),
                    Text(
                      '/$maximum',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 148.0,
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
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                color: Color(0xffDA0175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Jogar Novamente',
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
