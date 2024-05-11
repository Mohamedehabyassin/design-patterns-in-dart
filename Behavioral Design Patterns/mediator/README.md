# Mediator Pattern

In software engineering, the mediator pattern defines an object that encapsulates how a set of objects interact. This pattern is considered to be a behavioral pattern due to the way it can alter the program's running behavior.

Usually a program is made up of a large number of classes. Logic and computation are distributed among these classes. However, as more classes are added to a program, especially during maintenance and/or refactoring, the problem of communication between these classes may become more complex. This makes the program harder to read and maintain. Furthermore, it can become difficult to change the program, since any change may affect code in several other classes.

With the mediator pattern, communication between objects is encapsulated within a mediator object. Objects no longer communicate directly with each other, but instead communicate through the mediator. This reduces the dependencies between communicating objects, thereby reducing coupling.

[Wikipedia: Mediator Pattern](https://en.wikipedia.org/wiki/Mediator_pattern)
[Refactoring Guru: Mediator Pattern](https://refactoring.guru/design-patterns/mediator)

## Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/mediator)
