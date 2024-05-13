abstract class IMediator {
  void register(Colleague colleague);
  void update(String state);
}

abstract class Colleague {
  late String _state;
  String get state => _state;
  void set state(String newState) => _state = newState;
}

class Mediator implements IMediator {
  List<Colleague> _parties;
  Mediator(this._parties);

  @override
  void register(Colleague colleague) {
    _parties.add(colleague);
  }

  @override
  void update(String state) {
    for (var party in _parties) {
      party.state = state;
    }
  }
}

class Attendee extends Colleague {
  String name;
  Attendee(this.name);
}

void main() {
  var curly = Attendee("Curly");
  var larry = Attendee("Larry");
  var moe = Attendee("I prefer not to disclose my name");
  var mixer = List<Attendee>.from([curly, larry, moe]);
  var publicAnnouncementSystem = Mediator(mixer);

  publicAnnouncementSystem.update("Do NOT eat the tacos!");

  for (var person in mixer) {
    print("${person.name} heard \"${person.state}\".");
  }

  /*
    Curly heard "Do NOT eat the tacos!".
    Larry heard "Do NOT eat the tacos!".
    I prefer not to disclose my name heard "Do NOT eat the tacos!".
  */
}
