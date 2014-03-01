
Specification
=============

Overview
--------

Introduction
~~~~~~~~~~~~

This document aims to be a complete and detailed language references to provide a 

Versioning
^^^^^^^^^^

Oli language specification follows the semantic versioning convention and rules to
versining the document and future specifications

- Minor specification changes and text fixes will be a new patch version
- Any syntax new feature addon o removement implies a minor new version
- Any

General
~~~~~~~

File extension
^^^^^^^^^^^^^^

The proposed file extension is ``oli``

MIME Type
^^^^^^^^^

There are three different MIME types that can be used to represent the Oli language documents:

- text/oli
- application/oli
- text/oli-template


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


.. _semver: http://semver.org/
