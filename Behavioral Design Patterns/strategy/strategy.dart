abstract class CoffeeStrategy {
  String announce(String roast);
}

class AmericanoStrategy implements CoffeeStrategy {
  String announce(String roast) => "an Americano with $roast beans";
}

class DripStrategy implements CoffeeStrategy {
  String announce(String roast) => "a drip coffee with $roast beans";
}

class MochaStrategy implements CoffeeStrategy {
  String announce(String roast) => "a delicious mocha with $roast beans";
}

class CoffeeDrinker {
  CoffeeStrategy preferredDrink;
  String name;
  CoffeeDrinker(this.name, this.preferredDrink);
}

void main() {
  var americano = AmericanoStrategy();
  var drip = DripStrategy();
  var mocha = MochaStrategy();

  var me = CoffeeDrinker("Tyler", drip);
  var europeanBuddy = CoffeeDrinker("Mohamed", americano);
  var myDaughter = CoffeeDrinker("Jon", mocha);

  final String roastOfTheDay = "Italian";

  for (var person in [me, europeanBuddy, myDaughter]) {
    print("Hey ${person.name}, which drink' over there?");
    print("I'm enjoying ${person.preferredDrink.announce(roastOfTheDay)}!\r\n");
  }

  /*
    Hey Tyler, which drink over there?
    I'm enjoying a drip coffee with Italian beans!

    Hey Mohamed, which drink over there?
    I'm enjoying an Americano with Italian beans!

    Hey Jon,which drink over there?
    I'm enjoying a delicious mocha with Italian beans!
  */
}
