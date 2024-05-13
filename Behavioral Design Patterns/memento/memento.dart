class Memento {
  late String _state;

  Memento(String s) {
    _state = s;
    print("[Memento] State \"$s\" has been saved!");
  }

  String get state {
    print("[Memento] Providing saved state \"$_state\"...");
    return _state;
  }
}

class Originator {
  late String _state;

  // NOTE: This uses the state setter on init to get a handy print
  Originator(String s) {
    state = s;
  }

  String get state => _state;
  void set state(String newState) {
    _state = newState;
    print("[Originator] Set state to $newState");
  }

  Memento saveToMemento() {
    print("[Originator] Saving to memento...");
    return Memento(state);
  }

  void restoreFromMemento(Memento m) {
    print("[Originator] Restoring from memento...");
    _state = m.state;
    print("[Originator] Restored to $state.");
  }
}

class CareTaker {
  late Memento memento;
}

void main() {
  var originator = Originator("Returned from store");
  originator.state = "Placing car keys down";

  var locationOfKeys = originator.saveToMemento();
  var careTaker = CareTaker();
  careTaker.memento = locationOfKeys;

  originator.state = "Putting away groceries";
  originator.state = "Noticed missing pickles";
  originator.state = "Looking for car keys...";

  originator.restoreFromMemento(careTaker.memento);
  originator.state = "Going back to store for pickles";

  /*
    [Originator] Set state to Returned from store
    [Originator] Set state to Placing car keys down
    [Originator] Saving to memento...
    [Memento] State "Placing car keys down" has been saved!
    [Originator] Set state to Putting away groceries
    [Originator] Set state to Noticed missing pickles
    [Originator] Set state to Looking for car keys...
    [Originator] Restoring from memento...
    [Memento] Providing saved state "Placing car keys down"...
    [Originator] Restored to Placing car keys down.
    [Originator] Set state to Going back to store for pickles
  */
}
