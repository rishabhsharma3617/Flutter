abstract class Employee {
  void
      designation(); //It is compulsory to use every function in the derived class
}

class Intern extends Employee {
  var sal = 10000;
  void designation() {
    print('I am Intern and my salary is ${sal}');
  }
}

class Manager extends Employee {
  var sal = 50000;
  void designation() {
    print('I am Manager and my salary is ${sal}');
  }
}

void main() {
  Intern I1 = new Intern();
  Manager M1 = new Manager();
  I1.designation();
  M1.designation();
}
