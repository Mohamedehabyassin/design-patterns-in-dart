# Template Method Pattern

 Identified by Gamma et al. in the book Design Patterns. The template method is a method in a superclass, usually an abstract superclass, and defines the skeleton of an operation in terms of a number of high-level steps. These steps are themselves implemented by additional helper methods in the same class as the template method.

The helper methods may be either abstract methods, for which case subclasses are required to provide concrete implementations, or hook methods, which have empty bodies in the superclass. Subclasses can (but are not required to) customize the operation by overriding the hook methods. The intent of the template method is to define the overall structure of the operation, while allowing subclasses to refine, or redefine, certain steps.

[Wikipedia: Template Method Pattern](https://en.wikipedia.org/wiki/Template_method_pattern)
[Refactoring Guru: Template Method Pattern](https://refactoring.guru/design-patterns/template-method)

## Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/template_method)

## Advantage

- Turns an algorithm into a series of individual methods
- Keeps the structure of your base algorithm intact
- Eliminates code duplication by pulling up the steps with similar implementations into superclass
- The code that varies is split between different implementations
