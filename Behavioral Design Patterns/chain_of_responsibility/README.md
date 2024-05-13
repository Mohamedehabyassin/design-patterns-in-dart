# Chain of Responsibility Pattern

Design pattern consisting of a source of command objects and a series of processing objects. Each processing object contains logic that defines the types of command objects that it can handle; the rest are passed to the next processing object in the chain. A mechanism also exists for adding new processing objects to the end of this chain. Thus, the chain of responsibility is an object oriented version of the if ... else if ... else if ....... else ... endif idiom, with the benefit that the condition–action blocks can be dynamically rearranged and reconfigured at runtime.

In a variation of the standard chain-of-responsibility model, some handlers may act as dispatchers, capable of sending commands out in a variety of directions, forming a tree of responsibility. In some cases, this can occur recursively, with processing objects calling higher-up processing objects with commands that attempt to solve some smaller part of the problem; in this case recursion continues until the command is processed, or the entire tree has been explored. An XML interpreter might work in this manner.

This pattern promotes the idea of loose coupling.

Each handler must make either process the request or pass it along the chain.

The client may trigger and handler in the chain not just the first one.

The chain-of-responsibility pattern is structurally nearly identical to the decorator pattern, the difference being that for the decorator, all classes handle the request, while for the chain of responsibility, exactly one of the classes in the chain handles the request.

[Wikipedia: Chain of Responsibility](https://en.wikipedia.org/wiki/Chain-of-responsibility_pattern)
[Refactoring Guru: Chain of Responsibility](https://refactoring.guru/design-patterns/chain-of-responsibility)

## Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/chain_of_responsibility)

## Advantage

- Transform particular behaviors into stand-alone objects called handlers
- allows you to insert remove or reorder handlers dynamically

## Programming scenarios

- User authentication

## When to use

- When you encounter the need to execute several handlers in particular order

## Pitfalls

- Efficiency issue in long chain
- No guarantee for request handling
