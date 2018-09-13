import 'package:flutter/material.dart';


//  TextStyle generalFont(double size) {
//     return new TextStyle(
//         color: Colors.white,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w600,
//         fontSize: size);
//   }

//    TextStyle subFont(double size) {
//     return new TextStyle(
//         color: Colors.grey,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w600,
//         fontSize: size);
//   }

class MainSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Second Screen", home: new Scaffold(body: new SecBody()));
  }
}

class SecBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double barHeight = MediaQuery.of(context).padding.top;
    return new Column(children: <Widget>[
      new SecAppBar(),

      new Container(
        width: screenSize.width,
        height: screenSize.height - (60 + barHeight),
        color: Colors.purple,
        child: new ListView(
          children: <Widget>
          [
            new SecBoxBody()
          ]
        ),
      )
    ]);
  }
}

class SecAppBar extends StatelessWidget {
  TextStyle generalFont(double size) {
    return new TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: size);
  }

  @override
  Widget build(BuildContext context) {
    final double barHeight = MediaQuery.of(context).padding.top;
    return new Container(
      padding: new EdgeInsets.only(top: barHeight),
      height: barHeight + 60.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: new Center(
          child: new Text(
        'Planets',
        style: generalFont(30.0),
      )),
    );
  }
}

class SecBoxBody extends StatelessWidget {

  void add(){

  }
  final width = 350.0;
  final height = 300.0;
  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.only(top:0.0),
        child: new Column(children: <Widget>[
          new Container(
              height: height,
              width: width,
              child: new Stack(children: <Widget>[
                new Column(children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 100.0),
                      child: new Container(
                          height: 200.0, width: 300.0, color: Colors.grey)),
                ]),
                new Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: new Container(
                      height: 150.0, width: 150.0, color: Colors.blue),
                ),
              ])),
         new TitleSec(),
         new DescriptionSec(),
         new Padding(
           padding: EdgeInsets.only(bottom: 20.0)
         )
        ]));
  }
}

class TitleSec extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Padding(
      padding: EdgeInsets.only(right: 150.0, top: 20.0),
      child: Container(
      height: 30.0, 
      width: 150.0, 
      color: Colors.green,)
    );
  }
}

class DescriptionSec extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return new Padding(
      padding: EdgeInsets.only(right: 0.0, top: 20.0),
      child: Container(
      height: 300.0, 
      width: 300.0, 
      color: Colors.green,)
    );
  }
}
