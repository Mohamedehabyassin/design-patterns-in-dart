class SingletonPatternClass {
  static final SingletonPatternClass _singleton =
      new SingletonPatternClass._internal();

  factory SingletonPatternClass() {
    return _singleton;
  }
  static late String _name;
  static late int _age;

  static String get name => _name;
  static int get age => _age;

  // @override
  // String toString() => "Hello, my name is $name.";

  SingletonPatternClass._internal() {
    _name = "Ehab";
    calculateAge();
  }
  void calculateAge() {
    final DateTime dateTime = DateTime.now();
    _age = dateTime.year - 1999;
  }

  void writeFile() {}
}

void main() {
  var tyler = SingletonPatternClass();
  var anotherTyler = SingletonPatternClass();

  print(tyler);
  print(anotherTyler);
  print(SingletonPatternClass.age);

  var samenessCheck = identical(tyler, anotherTyler)
      ? "We are both the same ${SingletonPatternClass.name}."
      : "We are NOT the same. I mean, just look at us.";
  print(samenessCheck);
}
