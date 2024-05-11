# Interpreter Pattern

In computer programming, the interpreter pattern is a design pattern that specifies how to evaluate sentences in a language. The basic idea is to have a class for each symbol (terminal or non terminal) in a specialized computer language. The syntax tree of a sentence in the language is an instance of the composite pattern and is used to evaluate (interpret) the sentence for a client.
See also [Composite pattern](https://scottt2.github.io/design-patterns-in-dart/composite/).

[Wikipedia: Interpreter Pattern](https://en.wikipedia.org/wiki/Interpreter_pattern)

## Example

[View on GitHub](https://github.com/scottt2/design-patterns-in-dart/tree/master/interpreter)

## When to use

- Representing grammar of language (Music, Formulas, Mathematics)
- Domain Specific Languages (DSL) like SQL

## Pitfalls

- Complexity of grammar --> not easy to maintain
- Used in specific situations
