import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed;
  List<isTapped> tapBox = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isPressed = null;
    tapBox = [
      isTapped(tapped: false),
      isTapped(tapped: false),
      isTapped(tapped: false),
      isTapped(tapped: false),
      isTapped(tapped: false),
      isTapped(tapped: false),
      isTapped(tapped: false),
      isTapped(tapped: false),
      isTapped(tapped: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TicTacToe',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 500,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemCount: 9,
              itemBuilder: (context, int i) {
                return GestureDetector(
                  onTap: () {
                    print(i);
                    setState(() {
                      tapBox[i].tapped = !tapBox[i].tapped;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                    child: Center(
                      child: tapBox[i].tapped
                          ? Text(
                              'O',
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.blue,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class isTapped {
  bool tapped;
  isTapped({this.tapped});
}
