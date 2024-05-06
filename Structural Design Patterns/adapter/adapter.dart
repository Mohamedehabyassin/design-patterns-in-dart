const adaptedMessage = 'Adapted#method was called';

class Adapted {
  String method() {
    print('Adapted#method is being called');

    return adaptedMessage;
  }
}

abstract class Target {
  String call();
}

class Adapter implements Target {
  String call() {
    var adapted = Adapted();
    print('Adapter#call is being called');

    return adapted.method();
  }
}

void main() {
  var adapter = Adapter();
  var result = adapter.call();

  assert(result == adaptedMessage);
}
