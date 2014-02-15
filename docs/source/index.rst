Welcome to Oli Language's documentation!
========================================

Contents:

Indices and tables
------------------

-  :ref:``site-docs`` .. *site-docs: .. *\ overview:

Introduction
------------

.. toctree:: :maxdepth: 2 introduction rationale features stage
future\_versions

.. \_overview:

Overview
--------

.. toctree:: :maxdepth: 2

intro strings datatypes numeric (many more documents listed here)

Examples
--------

    Note: this is still the proposed sintax

You can use Oli as pretty markup templating language with powerful
built-in features

.. code:: ruby

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

Language Specification
======================

Overview
--------

Stage
~~~~~

Oli language specficication is under active desinging process

Versioning
^^^^^^^^^^

Oli uses the semantic version

General
~~~~~~~

File extension
^^^^^^^^^^^^^^

The proposed file extension is (as abvious): ``oli``

MIME Type
^^^^^^^^^

Both MIME types can be used: - application/oli - text/oli

Character encoding
^^^^^^^^^^^^^^^^^^

Oli only must support UTF-8 character encoding

You can use Unicode characters, but they must be defined using the
escaped unicode entity value

Lexical Conventions
-------------------

Whites Space
~~~~~~~~~~~~

Line Terminators
~~~~~~~~~~~~~~~~

Comments
~~~~~~~~

Tokens
~~~~~~

Keywords
~~~~~~~~

Reserved Words
~~~~~~~~~~~~~~

Punctuators
~~~~~~~~~~~

Literals
~~~~~~~~

Boolean
^^^^^^^

Number
^^^^^^

String
^^^^^^

Expressions
-----------

Identifiers
~~~~~~~~~~~

Literal Identifier
^^^^^^^^^^^^^^^^^^

String Identifier
^^^^^^^^^^^^^^^^^

Types
~~~~~

Operators
~~~~~~~~~

Oli introduces common set of built-in operators that can be really
useful

Unary operators
^^^^^^^^^^^^^^^

Postfix Increment
'''''''''''''''''

``++``

Postfix Decrement
'''''''''''''''''

``--``

Void
''''

``void``

Logical NOT
'''''''''''

``!``

Binary operators
~~~~~~~~~~~~~~~~

Multiplicate
''''''''''''

``*``

Divisor
'''''''

``/``

Addition
''''''''

``+``

Subtraction
'''''''''''

``-``

Less-than
'''''''''

``<``

Greater than
''''''''''''

``>``

Less-than-or-equal
''''''''''''''''''

``<=``

Greater-than-or-equal
'''''''''''''''''''''

``>=``

Equals
''''''

``==``

Does-not-equals
'''''''''''''''

``!=``

Assignment
''''''''''

``:``

Comma
'''''

``,``

Identifier Assignment
'''''''''''''''''''''

``>``

Reference
'''''''''

``&``

Extend
''''''

``>>``

Merge
'''''

``>>>``

Clone
'''''

``=>``

Operator Precedence
^^^^^^^^^^^^^^^^^^^

Template
''''''''

``@``

Statements
~~~~~~~~~~

Examples are defined based on context-free grammar EBNF-like sintaxis

Templating
^^^^^^^^^^

String interpolation ``@{`` and ``}``

Expressions
^^^^^^^^^^^

Value Statement
'''''''''''''''

::

    ValueStatement =
      ValueIdentifier [ MetaIdentifier ] : ( PrimitiveType | ListStatement ) ... EndOfLine

Block Statement
'''''''''''''''

::

    BlockStatement =
      BlockIdentifier [ MetaIdentifier ] :
        ( BlockStatement | ListStatement | PrimitiveType ) ...
      EndToken

ListStatement
'''''''''''''

MetaIdentifier
''''''''''''''

Primitive Types
~~~~~~~~~~~~~~~

Boolean
^^^^^^^

.. code:: coffeescript

    true
    false
    yes
    no

String
^^^^^^

Strings can be defined without quotes, but this is not applicable to all
cases.

Strings which contain one of the following characters must be quoted or
escaped:

::

    : , ' " #

::

    whitespaces
    [a-zA-Z0-9]
    [-|_|.|`|^|=|?|¿|¡|!|@|$|%|&|/|(|)|*]

Of course, it's supported to define strings with quotes

.. code:: javascript

    'this is a single-quoted string'
    "and this one is double-quoted"
    and finally this one without quotes

Number
^^^^^^

Numbers can be ``integer`` or ``float``

::

    123
    12.5342

Reserved Keywords
~~~~~~~~~~~~~~~~~

You must escape or quote the following values in strings unquoted chains

::

    end
    true
    false
    yes
    no
    :
