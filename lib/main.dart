import 'package:flutter/material.dart';
import 'package:story_app/StoryBrain.dart';

void main() => runApp(Destini());

StoryBrain sb = StoryBrain();
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
                flex: 5,
                child: Center(
                  child: Text(
                    sb.getStoryTitle() ,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      nextData(1);
                    },
                    child: Text(
                      sb.getChoice1(),
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
                child: Visibility(
                  visible: sb.isButtonVisible(),
                  child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        nextData(2);
                      },
                      child: Text(
                        sb.getChoice2(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void nextData(int choice){
    setState(() {
      sb.nextStory(choice);
    });
  }
}
