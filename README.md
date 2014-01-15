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

Reinventing the wheel just for fun

## Oli is useful for

- Create minimal and sintax clean and readable configuration files
- Create DSL for manifest files
-  

## Example

```ruby

# this a is a comment
name: This is Oli
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
: , ' "
```
```
whitespaces
[a-zA-Z0-9]
[-|_|.|`|^|=|?|¿|¡|!|@|$|%|&|/|(|)|*]
```

Of course, it's supported to define string with quotes

```javascript
'this is a single-quoted string'
"and this one is double-quoted"
and finally this one without quoted
```

#### Number

### Reserved Keywords

```
end
true
false
yes
no
:
```

[1]: https://github.com/h2non/oli.js

