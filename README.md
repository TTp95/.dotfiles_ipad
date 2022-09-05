# .dotfiles_ipad

From (https://github.com/Majixed/vim-dotfiles)

How to use
----------

First, clone this repository into your home directory:

.. code:: sh

    git clone ...

If you use ``lg2`` on a-Shell for iOS:

.. code:: sh

    lg2 clone ...

Then rename it to ``.vim``:

.. code:: sh

    mv vim-dotfiles .vim

If you already have a pre-existing configuration in your ``.vim`` directory, you may want to rename it to something else before running this command. If you don't, just remove it, then run this command.

Next, create your ``.vimrc`` file in your home directory containing only this line:

.. code:: vim

    runtime vimrc

For example, you can do:

.. code:: sh

    echo "runtime vimrc" > ~/.vimrc

As before, don't forget to backup your current ``.vimrc`` file before running this command, if you have one. You may replace ``~/`` with the path of your home directory. Alternatively you can move the ``vimrc`` file from the new ``.vim`` directory into your home directory and rename it to ``.vimrc``.

Feel free to open an issue if you have any questions or suggestions.
