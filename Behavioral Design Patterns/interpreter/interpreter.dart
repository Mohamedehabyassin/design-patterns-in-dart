abstract class Expression {
  late Number number;
  void interpret(int value);
}

class Number {
  late int value;
  Number(int value) {
    print("Starting with $value...");
    this.value = value;
  }
}

class Add implements Expression {
  Number number;
  Add(this.number);
  void interpret(int value) {
    print("Adding $value...");
    number.value += value;
  }
}

class Subtract implements Expression {
  Number number;
  Subtract(this.number);
  void interpret(int value) {
    print("Subtracting $value...");
    number.value -= value;
  }
}

void main() {
  var number = Number(0);
  var adder = Add(number);
  var subtract = Subtract(number);

  adder.interpret(100);
  subtract.interpret(60);
  adder.interpret(2);

  assert(number.value == 42);
  print("And the result is ${number.value}!");
}
