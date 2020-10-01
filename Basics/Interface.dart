class Example {
  void print1() {
    print(
        'Yes we can prin1 on the screen'); //In interface it is mandatory to override the declared functiions in the derived classes
  }

  void print2() {
    print('Yes we can prin2 on  the screen');
  }
}

class Example2 implements Example {
  void print1() {
    print('This is inherited');
  }

  void print2() {
    print('THis is anotehr inherited');
  }
}

void main() {
  Example2 ex = new Example2();
}
