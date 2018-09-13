import 'package:flutter/material.dart';
import './planet.dart';



class MainBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
      return new _MainBodyState();
    }
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "Planets",
      home: new Scaffold(
          backgroundColor: Colors.blue.shade900.withRed(80).withAlpha(200),
          body: new Body()
          ),
    );
  }
}

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final screenSize = MediaQuery.of(context).size;
    final double barHeight = MediaQuery.of(context).padding.top;
    return new Column(
      children: <Widget>[
        new AppBar(),
        new Container(
          child: new Center (
            child: Home(),
          ),
          width: screenSize.width,
          height: screenSize.height - (barHeight + 60),
          )
      ]
    );
  }
}



class Home extends StatelessWidget {
  static int thisvars;

  
  @override
  Widget build(BuildContext context) {
    return new ListView(children: <Widget>[
      Box('Earth',1),
      Box('Mars',3),
      Box('Venus',11),
      Box('Saturn',8),
      Box('Uranus',10),
      Box('Jupiter',2),
      Box('Mercury',4),
      Box('Moon',5),
      Box('Neptune',6),
      Box('Sun',9),
      Box('Pluto',7),
     
     ]
    );
  }
}

class AppBar extends StatelessWidget {
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
          )
      ),
    );
  }
}

class Box extends StatelessWidget {

  final String planetName;

  final int passedPlanet;
  static int thisvars;
  
  Box(this.planetName,this.passedPlanet);


  final Planets planets = new Planets(thisvars);

  TextStyle generalFont(double size) {
    return new TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: size);
  }

  TextStyle subFont(double size) {
    return new TextStyle(
        color: Colors.grey,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: size);
  }

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;


    return new Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: new Center(
            child: new Stack(children: <Widget>[
          new Row(
            children: <Widget>[
            new Padding(
                padding: EdgeInsets.only(left: ((screenSize.width-300)/2)+15),
                child: new Container(
                  height: 150.0,
                  width: 300.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue.shade900.withRed(100).withAlpha(140),
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 78.0),
                            child: new Container(
                              height: 50.0,
                              width: 200.0,
                              decoration: new BoxDecoration(
                                  color: null,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0))),
                              child: new Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Text(
                                          planetName,
                                          style: generalFont(30.0),
                                        ),
                                        new IconButton(
                                          icon: new Icon(
                                            Icons.more_vert,
                                            color: Colors.white,
                                          ),
                                          onPressed: () => null,
                                        )
                                      ]
                                  )
                              ),
                            )
                        ),

                        new Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 78.0),
                            child: new Container(
                              height: 25.0,
                              width: 130.0,
                              decoration: new BoxDecoration(
                                color: null,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0)),
                              ),
                              child: new Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: new Center(
                                    child: new Text(
                                      'Milky Way Galaxy',
                                      style: subFont(13.0),
                                    ),
                                  )
                              ),
                            )
                        ),

                        // new Padding(
                        //   padding: EdgeInsets.only(top:10.0, left: 78.0),
                        //   child: new Row(
                        //     children: <Widget>[
                        //       new Container(
                        //        height: 25.0,
                        //        width: 90.0,
                        //        decoration: new BoxDecoration(
                        //        color:Colors.red,
                        //        borderRadius: BorderRadius.all(Radius.circular(16.0))
                        //        ),
                        //       ),

                        //       new Padding(
                        //         padding: EdgeInsets.only(left: 10.0),
                        //         child: new Container(
                        //          height: 25.0,
                        //          width: 100.0,
                        //          decoration: new BoxDecoration(
                        //          color:Colors.red,
                        //          borderRadius: BorderRadius.all(Radius.circular(16.0))
                        //          ),
                        //        ),
                        //       )

                        //     ]
                        //   )
                        // )
                      ]
                    ),
                )
            ),
          ]
        ),
          //holder for the image
          new Padding(
              padding: EdgeInsets.only(left: ((screenSize.width-300)/2 - 33.0), top: 25.0),
              child: new Image.asset(
                planets.planetimg(passedPlanet),
                width: 100.0,
                height: 100.0,
              )
          )
        ]
      )
    )
  );
  }
}
