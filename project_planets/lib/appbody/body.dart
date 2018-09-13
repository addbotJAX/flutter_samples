import 'package:flutter/material.dart';
import './planet.dart';
import './second_body.dart';



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


// The body holder for the AppBar and Body

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final screenSize = MediaQuery.of(context).size;
    final double barHeight = MediaQuery.of(context).padding.top;
    return new Column(
      children: <Widget>[
        new AppBar(),
        new Container(
          width: screenSize.width ,
          height: screenSize.height - (barHeight + 60),
          child: new Center (
            child: new Home()
          ),
        
          )
      ]
    );
  }
}


// The body that displays all the planets

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return new ListView(
      children: <Widget>[
     
         Box(1),
         Box(2),
         Box(3),
         Box(4),
         Box(5),
         Box(6),
         Box(7),
         Box(8),
         Box(9),
         Box(10),
         Box(11),

       ]
    );
 
    
  }
}

// Custom AppBar

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


// The container box

class Box extends StatelessWidget {

  final int passedPlanet;

  static int thisvars;
  
  Box(this.passedPlanet);


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


    return new Container(
      child: new Padding(
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
                                      BorderRadius.all(Radius.circular(16.0))
                              ),
                              child: new Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Text(
                                          planets.planetName(passedPlanet),
                                          style: generalFont(30.0),
                                        ),
                                        new IconButton(
                                          icon: new Icon(
                                            Icons.more_vert,
                                            color: Colors.white,
                                          ),
                                          // Checks the button pressed and return the int
                                          onPressed: () => debugPrint(passedPlanet.toString()),
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

                        new Padding(
                          padding: EdgeInsets.only(top:10.0, left: 78.0),
                          child: new Row(
                            children: <Widget>[
                              new Container(
                               height: 25.0,
                               width: 90.0,
                               decoration: new BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                 ),
                                 child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                   new Icon(
                                    Icons.location_on,
                                    size: 15.0,
                                    color: Colors.grey,
                                   ),
                                   new Text(
                                    planets.planetDistance(passedPlanet),
                                    style: subFont(12.0),
                                  )
                                
                                 ]
                               ),
                              ),

                              new Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: new Container(
                                 height: 25.0,
                                 width: 90.0,
                                 decoration: new BoxDecoration(
                                   color: null,
                                 borderRadius: BorderRadius.all(Radius.circular(16.0))),
                                 child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                   new Icon(
                                    Icons.file_download,
                                    size: 15.0,
                                    color: Colors.grey,
                                   ),
                                   //for debugging (272 - 276)
                                  //  new Text(null,
                                  //  //  planets.planetGravity(passedPlanet),
                                  //   style: subFont(12.0),
                                  // )
                                
                                 ]
                               ),
                               ),
                              )
                          
                            ]
                          )
                        )
                      ]
                    ),
                )
            ),
          ]
        ),
          //holder for the image - for debugging (291-299)
          new Padding(
              padding: EdgeInsets.only(left: ((screenSize.width-300)/2 - 33.0), top: 25.0),
              child: new Image.asset(
                planets.planetimgs(passedPlanet).toString(),
                width: 100.0,
                height: 100.0,
              )
          )
        ]
      )
    )
  )
    );
  }
}


