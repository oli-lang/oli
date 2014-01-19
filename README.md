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
   |__________________|    Elegant, featured and declarative minimal language
    :________________:
     `-..________..-´

</pre>

<table>
<tr> 
<td>Language specification version</td><td>0.1.0</td>
</tr>
</table>

> **Draft version! Oli is still under exciting designing process**

<!--
Hate reading docs? [Try it online](http://h2non.github.io/oli.js)!
-->

## Rationale

<!--
1. Reinventing the wheel is funny, but doing it with a bit of improvements is exciting
-->

Oli aims to be a confortable minimal language for general purposes which provides a mix of 
features from common markup languages and some basic features from programming languages

Oli has a beutiful and clean syntax with a non-obstructive grammar, that allows to you to create your own DSL.
It was designed to be mainly consumed by humans

<!--
There are a lot of [lightweight languages][2], however not much of them are not confortable 
and it's not easy to take an ideal choice
-->

## Language Features

- First class primitive types: boolean, number and strings
- List and data hashmaps with nested support
- Data references (formally variables)
- Copy and extend data structures or values
- String interpolation
- Built-in logical, comparison and math operators

## Design Goals

- Simple sintax, but featured built-in rich possibilities
- Unobstructive minimal sintax grammar-free for DSL
- Type inference and powerful pattern matching
- Easy nested structures and lists
- Primitive types with semantics association
- Parsers should think more than human
- Data references are first class supported, avoid redundancy!
- Templating support, why not?
- Focus on the content, not on the sintax

## Oli is useful for

- Create sintax clean and readable configuration files
- Create you own DSL for general purposes
- Store human-writable/readable data (like manifest files)
- Data interchange format for trivial structures

## Example

```ruby

# this a is a comment
name: Hello Oli!
version: 0.1.0

author:
  name: Tomas Aparicio
  email: tomas@aparicio.me
  web: http://tomas.aparicio.me
  social: no # boolean primitive value
end

##
  Multi-line comment
##
deploy > zeus:
  server > server.url: 'http://zeus.server.com' # strings can be quoted
  port: 9000 # number as primitive value
  retry: yes
  # nested block
  authentication: 
    # lists can be implicit using commas
    tokens: 
      %1DOTnv6B9b]n7pbV535,
      p16O2$)9,Z63bD&Q-82d
    end
  end
end

# extends from zeus block
deploy >> zeus > hera:
  server: 'http://hera.server.com'
end

# creates a copy of hera block
deploy:> hera

# short-hand reference declaration operator
&flags: --debug, --trace

command: server.sh start *{flags}

# multi-line unquoted string
log:
  /var/log/deploy.log
  /var/log/error.log
end

```

## Implementations

- [JavaScript][1] (node.js and the browser)

# Language Spec

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

## Whishful Thinking

- Identation support for nested blocks
- Math operators
- Math expressions
- Date as first class type?

## Contributing

Wanna help? Cool!

- USE IT!
- Write a parser
- Write a sintax highlighter
- Open an issue with your ideas
- Make pull request

## License

Copyright (c) Tomas Aparicio

Released under the MIT license


[1]: https://github.com/h2non/oli.js
[2]: http://en.wikipedia.org/wiki/Lightweight_markup_language


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/h2non/oli/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

