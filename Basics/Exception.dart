void main() {
  int result = 12 ~/ 4; //Special operator to return in the form of integer;
  print("Thew result is $result");
  try {
    int first = 12 ~/ 0;
  } on IntegerDivisionByZeroException {
    //on is used only when we know whats the ezxception
    print('Cannot divide by the zero');
  }

  //CAse2 when we do not know the name of the exception
  try {
    int res = 12 ~/ 0;
  } catch (e, s) {
    //s is the stack trave object which will be used folr debuigging
    print('the exception thrown is $e');
    print('Stcak trace object is $s');
  }

  //Fianlly Clause
  try {
    int res = 12 ~/ 0;
  } catch (e, s) {} finally {
    print('Finally will excecuted no matter ehat happens to your code');
  }
}
