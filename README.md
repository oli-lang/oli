<pre>
            __
           (__)
         _|__|_|_
        (________)  
        |        |
        |        |
       |          |
      |            |                 _   _
     |              |               | | (_)
    |                |          ___ | |  _
   |                  |        / _ \| | | |
  |                    |      | (_) | |_| |
  |~^~~~^~~^~~~^~~^~~^~|       \___/\___|_|
  |~^~~~^~~~^~~~~^~~^~~|  
   |__________________|
    :________________:
     `-..________..-´

</pre>

Visit the [Oli site][oli-site] for more information

> **Draft version! Oli language specification is under active discussion process**

<table>
<tr> 
  <td>Current version</td><td>0.1</td>
</tr>
<tr>
  <td>Stage</td><td>Unclosed (under discussion)</td>
</tr>
</table>

## About

Oli aims to be a confortable minimal language for general purposes which provides a mix of features from common markup languages and some basic features from programming languages

It has a beutiful, elegant and clean syntax with unobstructive grammar, that allows to use it for multiple purposes, like creating your own DSL. It was designed to be mainly consumed by humans

## Language Specification

You can see the current unfinished language specification [here][oli-docs]

Language features, sintax and enhancements are begin discussed on [Github][oli-discussion]

## Implementations

- [JavaScript][implementation-javascript] (node.js and the browser)
- [Java][implementation-java] (in progress)

<!--
## Rationale

Oli aims to be a confortable minimal language for general purposes which provides a mix of 
features from common markup languages and some basic features from programming languages

It has a beutiful, readable and clean syntax with a non-obstructive grammar, that allows to you to create your own DSL.
It was designed to be mainly consumed by humans

## Language Features

- First class primitive types: boolean, number and strings
- List and data hashmaps support with nested support
- Data references (formally variables)
- Copy or extend data structures and values
- Templaiting with string interpolation support 
- Built-in logical, comparison and math operators

## Design Goals

- Simple but built-in rich features
- Unobstructive minimal sintax grammar-free for DSL usage
- Type inference and powerful pattern matching
- Easy to use nested structures and lists
- Useful primitive types with semantics association
- Parser intelligence, it should think more than human
- Data references as first class support (no more redundancy!)
- Templating support (why not?)
- Implements programming languages basic operators
- Focus on the content, not on the sintax

## Oli is useful for

- Create sintax clean and readable configuration files
- Create you own DSL for general purposes
- Store human-writable/readable data (like manifest files)
- Data interchange format for trivial structures
- Powerful markup-like templating language

## Examples

> Note: this is still the proposed sintax

You can use Oli as pretty markup templating language with powerful built-in features
```ruby
!DOCTYPE html
html:
  head:
    &title: Welcome to Oli!
  end
  body:
    # i'm using a reference that points to 'title'
    h1:> title 
    # this is a in-line comment!
    div(class: container, id: main):
      p(class: main-title another-class): This is a paragraph
      a(href: 'http://h2non.github.io/oli', title: click here!): Oli Spec
    end
  end
end
```
-->

<!--
# Sintax Overview

`TODO`

# Language Specification

## Overview

### Stage

Oli language specficication is under active desinging process

#### Versioning

Oli uses the semantic version 

### General

#### File extension

The proposed file extension is (as abvious): `oli`

#### MIME Type

Both MIME types can be used:
- application/oli
- text/oli

#### Character encoding

Oli only must support UTF-8 character encoding

You can use Unicode characters, but they must be defined using the escaped unicode entity value

## Lexical Conventions

### Whites Space

### Line Terminators

### Comments

### Tokens

### Keywords

### Reserved Words

### Punctuators

### Literals

#### Boolean

#### Number

#### String

## Expressions

### Identifiers

#### Literal Identifier

#### String Identifier

### Types

### Operators

Oli introduces common set of built-in operators that can be really useful

#### Unary operators

##### Postfix Increment

`++`

##### Postfix Decrement

`--`

##### Void

`void`

##### Logical NOT

`!`

### Binary operators

##### Multiplicate

`*`

##### Divisor

`/`

##### Addition

`+`

##### Subtraction

`-`

##### Less-than 

`<`

##### Greater than

`>`

##### Less-than-or-equal

`<=`

##### Greater-than-or-equal

`>=` 

##### Equals

`==`

##### Does-not-equals 

`!=`

##### Assignment

`:`

##### Comma

`,`


##### Identifier Assignment

`>`

##### Reference

`&`

##### Extend

`>>`

##### Merge

`>>>`

##### Clone

`=>`

#### Operator Precedence

##### Template

`@`

### Statements

Examples are defined based on context-free grammar EBNF-like sintaxis

#### Templating

String interpolation `@{` and `}`

#### Expressions

##### Value Statement

```
ValueStatement =
  ValueIdentifier [ MetaIdentifier ] : ( PrimitiveType | ListStatement ) ... EndOfLine
```

##### Block Statement

```
BlockStatement =
  BlockIdentifier [ MetaIdentifier ] :
    ( BlockStatement | ListStatement | PrimitiveType ) ...
  EndToken
```

##### ListStatement

##### MetaIdentifier

### Primitive Types

#### Boolean

```coffeescript
true
false
yes
no
```

#### String

Strings can be defined without quotes, but this is not applicable to all cases.

Strings which contain one of the following characters must be quoted or escaped:
```
: , ' " #
```

```
whitespaces
[a-zA-Z0-9]
[-|_|.|`|^|=|?|¿|¡|!|@|$|%|&|/|(|)|*]
```

Of course, it's supported to define strings with quotes

```javascript
'this is a single-quoted string'
"and this one is double-quoted"
and finally this one without quotes
```

#### Number

Numbers can be `integer` or `float`
```
123
12.5342
```

### Reserved Keywords

You must escape or quote the following values in strings unquoted chains

```
end
true
false
yes
no
:
```
-->

## Contributing

Oli is a community-driven project.
The language specification is under active debate and enhancement process. It's open for everyone to discuss, you're welcome!

How can I contribute?

- Write a parser and compiler
- Discuss the future specification and language features
- Use it
- Talk about it to your friends
- Help improving the documentation

## Authors

- [Tomas Aparicio](https://github.com/h2non)
- Alvaro Alda

## License

Copyright (c) Oli authors

Released under the MIT license


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/h2non/oli/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

[oli-site]: http://oli-lang.org
[oli-docs]: http://docs.oli-lang.org
[oli-discussion]: https://github.com/oli-lang/oli/issues?labels=discussion&page=1&state=open
[wikipedia-markup]: http://en.wikipedia.org/wiki/Lightweight_markup_language

[implementation-javascript]: https://github.com/oli-lang/oli-js
[implementation-java]: https://github.com/oli-lang/oli-java
