## Adapter Pattern
An adapter allows two incompatible interfaces to work together. This is the real-world definition for an adapter. Interfaces may be incompatible, but the inner functionality should suit the need. The adapter design pattern allows otherwise incompatible classes to work together by converting the interface of one class into an interface expected by the clients.

[Wikipedia: Adapter Pattern](https://en.wikipedia.org/wiki/Adapter_pattern)
[Refactoring Guru: Adapter Pattern](https://refactoring.guru/design-patterns/adapter)

## Applicability
 Use the Adapter class when you want to use some existing class, but its interface isn’t compatible with the rest of your code.

 The Adapter pattern lets you create a middle-layer class that serves as a translator between your code and a legacy class, a 3rd-party class or any other class with a weird interface.

 Use the pattern when you want to reuse several existing subclasses that lack some common functionality that can’t be added to the superclass.

 You could extend each subclass and put the missing functionality into new child classes. However, you’ll need to duplicate the code across all of these new classes, which smells really bad.

The much more elegant solution would be to put the missing functionality into an adapter class. Then you would wrap objects with missing features inside the adapter, gaining needed features dynamically. For this to work, the target classes must have a common interface, and the adapter’s field should follow that interface. This approach looks very similar to the Decorator pattern.

### Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/adapter)

