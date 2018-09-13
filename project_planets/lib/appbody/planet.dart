// import 'package:flutter/material.dart';

class Planets{

  String planetNames;
  int passedValue;
  Planets(int vals){
    this.passedValue;
  }

  //return the image of the planet through strings

 String planetimgs(int placeint){
  //  passedValue = placeint;
   switch(placeint){
      case 1:
        return 'images/sun.png';
        break;
      case 2:
        return 'images/mercury.png';
        break;
      case 3:
        return 'images/venus.png';
        break;
     case 4:
        return 'images/earth.png';
        break;
     case 5:
        return 'images/moon.png';
        break;
     case 6:
        return 'images/mars.png';
        break;
     case 7:
        return 'images/jupiter.png';
        break;
     case 8:
        return 'images/saturn.png';
        break;
     case 9:
        return 'images/uranus.png';
        break;
     case 10:
        return 'images/neptune.png';
        break;
     case 11:
        return 'images/pluto.png';
        break;
 
    
    }


  
   return null;

    
   }

  //the planet description - still unused
   String planetContent(int placeint){
     switch(placeint){
      case 1:
        return "The Sun is by far the largest object in the solar system. It contains more than 99.8% of the total mass of the Solar System (Jupiter contains most of the rest). It is often said that the Sun is an ordinary star. That is true in the sense that there are many others similar to it. But there are many more smaller stars than larger ones; the Sun is in the top 10% by mass. The median size of stars in our galaxy is probably less than half the mass of the Sun.";
        break;
      case 2:
        return "Mercury is the closest planet to the Sun. Mercury is slightly smaller in diameter than the moons Ganymede and Titan but more than twice as massive. Mercury has been known since at least the time of the Sumerians (3rd millennium BC). It was sometimes given separate names for its apparitions as a morning star and as an evening star. Greek astronomers knew, however, that the two names referred to the same body. Heraclitus even believed that Mercury and Venus orbit the Sun, not the Earth.";
        break;
      case 3:
        return "Venus is the second planet from the Sun and the sixth largest. Venus' orbit is the most nearly circular of that of any planet, with an eccentricity of less than 1%. Venus has been known since prehistoric times. It is the brightest object in the sky except for the Sun and the Moon. Like Mercury, it was popularly thought to be two separate bodies: Eosphorus as the morning star and Hesperus as the evening star, but the Greek astronomers knew better.";
        break;
     case 4:
        return "Earth is the third planet from the Sun and the fifth largest. Earth, of course, can be studied without the aid of spacecraft. Nevertheless it was not until the twentieth century that we had maps of the entire planet. Pictures of the planet taken from space are of considerable importance; for example, they are an enormous help in weather prediction and especially in tracking and predicting hurricanes. And they are extraordinarily beautiful.";
        break;
     case 5:
        return "The Moon is the only natural satellite of Earth. The Moon, of course, has been known since prehistoric times. It is the second brightest object in the sky after the Sun. As the Moon orbits around the Earth once per month, the angle between the Earth, the Moon and the Sun changes; we see this as the cycle of the Moon's phases. The time between successive new moons is 29.5 days (709 hours), slightly different from the Moon's orbital period (measured against the stars) since the Earth moves a significant distance in its orbit around the Sun in that time.";
        break;
     case 6:
        return "Mars is the fourth planet from the Sun and the seventh largest. Mars has been known since prehistoric times. Of course, it has been extensively studied with ground-based observatories. But even very large telescopes find Mars a difficult target, it's just too small. It is still a favorite of science fiction writers as the most favorable place in the Solar System (other than Earth!) for human habitation. he first spacecraft to visit Mars was Mariner 4 in 1965. Several others followed including Mars 2, the first spacecraft to land on Mars and the two Viking landers in 1976. Ending a long 20 year hiatus, Mars Pathfinder landed successfully on Mars on 1997 July 4. In 2004 the Mars Expedition Rovers Spirit and Opportunity landed on Mars sending back geologic data and many pictures; they are still operating after more than three years on Mars. In 2008, Phoenix landed in the northern plains to search for water. ";
        break;
     case 7:
        return "Jupiter is the fifth planet from the Sun and by far the largest. Jupiter is more than twice as massive as all the other planets combined (the mass of Jupiter is 318 times that of Earth). Jupiter is the fourth brightest object in the sky (after the Sun, the Moon and Venus). It has been known since prehistoric times as a bright wandering star. But in 1610 when Galileo first pointed a telescope at the sky he discovered Jupiter's four large moons Io, Europa, Ganymede and Callisto (now known as the Galilean moons) and recorded their motions back and forth around Jupiter. The gas planets do not have solid surfaces, their gaseous material simply gets denser with depth (the radii and diameters quoted for the planets are for levels corresponding to a pressure of 1 atmosphere). What we see when looking at these planets is the tops of clouds high in their atmospheres (slightly above the 1 atmosphere level). ";
        break;
     case 8:
        return "Saturn is the sixth planet from the Sun and the second largest. Saturn has been known since prehistoric times. Galileo was the first to observe it with a telescope in 1610; he noted its odd appearance but was confused by it. Early observations of Saturn were complicated by the fact that the Earth passes through the plane of Saturn's rings every few years as Saturn moves in its orbit. A low resolution image of Saturn therefore changes drastically. It was not until 1659 that Christiaan Huygens correctly inferred the geometry of the rings. Saturn's rings remained unique in the known solar system until 1977 when very faint rings were discovered around Uranus (and shortly thereafter around Jupiter and Neptune). Saturn is the least dense of the planets; its specific gravity (0.7) is less than that of water. Saturn's interior is hot (12000 K at the core) and Saturn radiates more energy into space than it receives from the Sun. Most of the extra energy is generated by the Kelvin-Helmholtz mechanism as in Jupiter. But this may not be sufficient to explain Saturn's luminosity; some additional mechanism may be at work, perhaps the raining out of helium deep in Saturn's interior. ";
        break;
     case 9:
        return "Uranus is the seventh planet from the Sun and the third largest (by diameter). Uranus is larger in diameter but smaller in mass than Neptune. Uranus, the first planet discovered in modern times, was discovered by William Herschel while systematically searching the sky with his telescope on March 13, 1781. It had actually been seen many times before but ignored as simply another star (the earliest recorded sighting was in 1690 when John Flamsteed cataloged it as 34 Tauri). Uranus has been visited by only one spacecraft, Voyager 2 on Jan 24 1986. Uranus is composed primarily of rock and various ices, with only about 15% hydrogen and a little helium (in contrast to Jupiter and Saturn which are mostly hydrogen). Uranus (and Neptune) are in many ways similar to the cores of Jupiter and Saturn minus the massive liquid metallic hydrogen envelope.";
        break;
     case 10:
        return "Neptune is the eighth planet from the Sun and the fourth largest (by diameter). Neptune is smaller in diameter but larger in mass than Uranus.Neptune's composition is probably similar to Uranus': various ices and rock with about 15% hydrogen and a little helium. Like Uranus, but unlike Jupiter and Saturn, it may not have a distinct internal layering but rather to be more or less uniform in composition. But there is most likely a small core (about the mass of the Earth) of rocky material. Its atmosphere is mostly hydrogen and helium with a small amount of methane. ";
        break;
     case 11:
        return "Pluto orbits beyond the orbit of Neptune (usually). It is much smaller than any of the official planets and now classified as a dwarf planet. Pluto is smaller than seven of the solar system's moons (the Moon, Io, Europa, Ganymede, Callisto, Titan and Triton).";
        break;
 
    
   }
  
   return null;
   }
  //the planet distance from earth
   String planetDistance(int passed){
      switch(passed){
     case 1:
        return 'Center';
        break;
     case 2:
        return '0.39 M km';
        break;
     case 3:
        return '0.72 M km';
        break;
     case 4:
        return '1 M km';
        break;
     case 5:
        return '1.03 M km';
        break;
     case 6:
        return '1.52 M km';
        break;
     case 7:
        return '5.20 M km';
        break;
     case 8:
        return '9.54 M km';
        break;
     case 9:
        return '19.18 M km';
        break;
     case 10:
        return '30.06 M km';
        break;
     case 11:
        return '39.53 M km';
        break;
   }
  
   return null;

   }
   //the planets gravity
   String planetGravity(int passed){
     return null;
   }
   //the planets names
   String planetName(int passed){
         switch(passed){
     case 1:
        return 'Sun';
        break;
     case 2:
        return 'Mercury';
        break;
     case 3:
        return 'Venus';
        break;
     case 4:
        return 'Earth';
        break;
     case 5:
        return 'Moon';
        break;
     case 6:
        return 'Mars';
        break;
     case 7:
        return 'Jupiter';
        break;
     case 8:
        return 'Saturn';
        break;
     case 9:
        return 'Uranus';
        break;
     case 10:
        return 'Neptune';
        break;
     case 11:
        return 'Pluto';
        break;
         }
    return null;
 }

}