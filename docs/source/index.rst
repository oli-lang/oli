Oli Language's documentation and reference
==========================================

Oli is a minimal declarative language, focused on simplicity, elegancy and built-in rich features.
It is a communitity-driven project with an open specification

This is the initial beta `Oli language`_ reference and specification which aims to cover 
all the technical details of the language in order to be useful for implementation processes 
or consulting

There is not still an official language specification.
The initial version 0.1 is still an under debate processes. 
Anyone can join_ to the discussion and help improving Oli

.. _oli site: http://oli-lang.org/
.. _join: https://github.com/oli-lang/oli/issues?labels=discussion&page=1&state=open

Table of Contents
-----------------

.. toctree::
   :maxdepth: 3
  
   introduction
   overview
   reference
   specification


Examples
--------

You can use Oli as pretty markup templating language with powerful
built-in features

.. code-block:: ruby

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
