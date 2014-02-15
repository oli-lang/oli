Welcome to Oli Language's documentation!
========================================

Contents:

.. toctree::
   :maxdepth: 2
   
   overview
   spec

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

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
