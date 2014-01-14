# Oli

> Elegant and declarative minimalist language for general purposes

> **work in progress**

Current version: 0.1.0-rc.1

## Rationale

Thinking about it...

## Example

```ruby

# this a is a comment
name: Oli descripcion language
version 0.1.0

author:
  name: Tomas Aparicio
  email: tomas@aparicio.me
  web: http://tomas.aparicio.me
  social: no # it's a primitive
end 

##
  Multi-line comment
##
deploy (zeus):
  server: http://deploy.server.com
  port: 9000 # this is a number
  # nested block
  authentication: 
    token: %1DOTnv6B9b]n7pbV535
    tries: 1
  end
end

```

## Spec

### 