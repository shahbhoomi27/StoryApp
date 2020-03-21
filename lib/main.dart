import 'package:flutter/material.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
//          border: Border.all(width: 4,color: Colors.red) ,
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                flex: 5,
                child: Center(
                    child: Text(
                  "Story text will go here...",
                  style: TextStyle(fontSize: 25,),
                ))),
            Expanded(
                child: FlatButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      "Choice 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ))),
            Expanded(
                child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      "Choice 2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )))
          ],
        )),
      ),
    );
  }
}
