# Memento Pattern

The memento pattern is a software design pattern that provides the ability to restore an object to its previous state (undo via rollback).

The memento pattern is implemented with three objects: the originator, a caretaker and a memento. The originator is some object that has an internal state. The caretaker is going to do something to the originator, but wants to be able to undo the change. The caretaker first asks the originator for a memento object. Then it does whatever operation (or sequence of operations) it was going to do. To roll back to the state before the operations, it returns the memento object to the originator. The memento object itself is an opaque object (one which the caretaker cannot, or should not, change). When using this pattern, care should be taken if the originator may change other objects or resources - the memento pattern operates on a single object.

[Wikipedia: Memento Pattern](https://en.wikipedia.org/wiki/Memento_pattern)
[Refactoring Guru: Memento Pattern](https://refactoring.guru/design-patterns/memento)

## Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/memento)

## Programming Scenario

- Something like Word, Excel, and Power point

## When to us

- Used to externalize object state to provide rollback functionality

## Pitfalls

- Can be expensive if large copy
- Deleting history
- Don't expose information except for the memento means encapsulate data into memento
