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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Center(
                  child: Text(
                    "Story text will go here... afasdf sad fsadfasdfsad fasdf sa fasdf sfs fs s asfasdf asf asdf asd saf sadf asdfhj ksdfjsadhjf hsj fhjsadgfhj gshj fgshaj fhjsf jf " ,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
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
                    )),
              ),
              SizedBox(
                height: 10,
              ),
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
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
