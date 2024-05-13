# Visitor Pattern

The visitor design pattern is a way of separating an algorithm from an object structure on which it operates. A practical result of this separation is the ability to add new operations to existent object structures without modifying the structures. It is one way to follow the open/closed principle.

In essence, the visitor allows adding new virtual functions to a family of classes, without modifying the classes. Instead, a visitor class is created that implements all of the appropriate specializations of the virtual function. The visitor takes the instance reference as input, and implements the goal through double dispatch.

[Wikipedia: Visitor Pattern](https://en.wikipedia.org/wiki/Visitor_pattern)
[Refactoring Guru: Visitor Pattern](https://refactoring.guru/design-patterns/visitor)

## Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/visitor)

## When to use

- Use the visitor when you need to perform an operation on all elements of complex object structure