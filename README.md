> **work in progress**

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
   |__________________|       Elegant and declarative minimal language
    :________________:
     `-..________..-´

</pre>

<table>
<tr> 
<td>Version</td><td>0.1.0</td>
</tr>
</table>

## Rationale

First, reinventing the wheel is funny, but doing it with a bit of improvements is exciting.

Secondary, there are a lot of file formats, but mush of them

## Design Goals

- Minimal sintax with free-grammar use
- Focus on the content, not on the sintax
- Type inference including unquoted strings
- Allow nested structures and lists
- Primitive types with semantics association
- The parser should be smart, not the human

## Oli is useful for

- Create sintax clean and readable configuration files
- Create you own DSL
- Store human-writable/readable focused data

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
deploy (zeus):
  server: 'http://deploy.server.com' # strings can be quoted
  port: 9000 # number is also a primitive value
  # nested block
  authentication: 
    # lists can be implicit using commas
    tokens: 
      %1DOTnv6B9b]n7pbV535,
      p16O2$)9,Z63bD&Q-82d
    end
  end
end

# multi-line unquoted string
log:
  /var/log/deploy.log
  /var/log/error.log

```

## Implementations

- [JavaScript][1] (node.js and the browser)

## Language Spec

### MIME Type

Both MIME types can be used:
- application/oli
- text/oli

### Character encoding

Oli only supports UTF-8 character encoding.
You can use Unicode characters, but they must be defined using the escaped unicode entity value

### Sintax Expressions

#### Value Statement

```
ValueStatement =
  ValueIdentifier [ MetaIdentifier ] : ( PrimitiveType | ListStatement ) ... EndOfLine
```

#### Block Statement

```
BlockStatement =
  BlockIdentifier [ MetaIdentifier ] :
    ( BlockStatement | ListStatement | PrimitiveType ) ...
  EndToken
```

#### ListStatement

#### MetaIdentifier

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

## Contributing

Wanna help? Cool!

- USE IT!
- Open an issue with your ideas
- Make pull request
- Write a parser

## License

Copyright (c) Tomas Aparicio

Released under the MIT license


[1]: https://github.com/h2non/oli.js

