import 'package:flutter/material.dart';

class Planets{

  String planetNames;
  int passedValue;
  Planets(int vals){
    this.passedValue;
  }

 String planetimg(int placeint){
   
   switch(placeint){
     case 1:
        return 'images/earth.png';
        break;
     case 2:
        return 'images/jupiter.png';
        break;
     case 3:
        return 'images/mars.png';
        break;
     case 4:
        return 'images/mercury.png';
        break;
     case 5:
        return 'images/moon.png';
        break;
     case 6:
        return 'images/neptune.png';
        break;
     case 7:
        return 'images/pluto.png';
        break;
     case 8:
        return 'images/saturn.png';
        break;
     case 9:
        return 'images/sun.png';
        break;
     case 10:
        return 'images/uranus.png';
        break;
     case 11:
        return 'images/venus.png';
        break;
   }
  
   return null;

    
   }

  
 }

