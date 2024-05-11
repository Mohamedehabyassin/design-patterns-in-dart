# Iterator Pattern

In object-oriented programming, the iterator pattern is a design pattern in which an iterator is used to traverse a container and access the container's elements. The iterator pattern decouples algorithms from containers; in some cases, algorithms are necessarily container-specific and thus cannot be decoupled.

For example, the hypothetical algorithm SearchForElement can be implemented generally using a specified type of iterator rather than implementing it as a container-specific algorithm. This allows SearchForElement to be used on any container that supports the required type of iterator.

[Wikipedia: Iterator Pattern](https://en.wikipedia.org/wiki/Iterator_pattern)
[Refactoring Guru: Iterator Pattern](https://refactoring.guru/design-patterns/iterator)

## Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/iterator)

## When to use

- Provide way to access the elements of an aggregate object sequentially without exposing its underlying representation

## Pitfalls

- No access to index of the collection (it can be accessed according to used programming language)
- Unidirectional
- Sometimes it's slower than using and index and looping through it
