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

## Example

```ruby

# this a is a comment
name: This is Oli
version: 0.1.0

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
  authentication: 
    # lists can be implicit used with commas
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


## Spec

### 
