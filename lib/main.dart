import 'package:flutter/material.dart';

var mainColor = Color(0xFFADD8E6);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topAppBar(),
      body: Column(
        children: <Widget>[
          topImage(),
          body(),
        ],
      ),
    );
  }
}

Widget topAppBar() {
  return AppBar(
    backgroundColor: mainColor,
    elevation: 0.0,
    title: Text(
      "Flutter VS Compose",
      style: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
    ),
  );
}

Widget topImage() {
  return Image.asset(
    "assets/vs.jpg",
    height: 180,
  );
}

class body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => bodyState();
}

class bodyState extends State<body> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter += 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello World!"),
        Text("This is a second line"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Your count is $counter",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 100),
          child: MaterialButton(
              color: mainColor,
              textColor: Colors.white,
              onPressed: _incrementCounter,
              child: Text(
                "Add 5 to your count",
                style: TextStyle(fontSize: 20),
              )),
        )
      ],
    );
  }
}
