# Oli

> Elegant and declarative minimalist language for general purposes


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

> **work in progress**

<table>
<tr> 
<td>Version</td><td>0.1.0</td>
</tr>
</table>

## Rationale

Reinventing the wheel is fun

## Example

```ruby

# this a is a comment
name: Oli descripcion language
version 0.1.0

author:
  name: Tomas Aparicio
  email: tomas@aparicio.me
  web: http://tomas.aparicio.me
  social: no # a boolean primitive
end 

##
  Multi-line comment
##
deploy (zeus):
  server: 'http://deploy.server.com' # strings can be quoted
  port: 9000 # this is a number
  # nested block
  authentication (token): 
    token: %1DOTnv6B9b]n7pbV535
  end
end

```

## Spec

### 