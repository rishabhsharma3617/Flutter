mixin Fluttering {
  void flutter() {
    print('fluttering');
  }
}

abstract class Insect {
  void crawl() {
    print('crawling');
  }
}

abstract class AirborneInsect extends Insect with Fluttering {
  void buzz() {
    print('buzzing annoyingly');
  }
}

class Mosquito extends AirborneInsect {
  void doMosquitoThing() {
    crawl();
    flutter();
    buzz();
    print('sucking blood');
  }
}

mixin Pecking on Bird {
  void peck() {
    print('pecking');
    chirp();
  }
}

abstract class Bird with Fluttering {
  void chirp() {
    print('chirp chirp');
  }
}

class Swallow extends Bird {
  void doSwallowThing() {
    chirp();
    flutter();
    print('eating a mosquito');
  }
}

class BlueJay extends Bird with Pecking {}

class Sparrow extends Bird with Pecking {}

void main() {
  var m = Mosquito();
  m.doMosquitoThing();
  var bird = Swallow();
  bird.doSwallowThing();
  var s = Sparrow();
  s.peck();
  s.flutter();
}

//Mixins are used for using the methods of the
//Classes without even inheriting them
