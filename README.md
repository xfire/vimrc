fire's vim setup
================

my new, clean vim setup.

dependencies
------------
* any 256 color console like `rxvt-unicode-256color` (ubuntu)
* `ack-grep` (optional)
* `git` (optional)


installation
------------

    > mkdir -p ~/.vim
    > cd ~/.vim
    > wget -c -O - https://github.com/xfire/vimrc/tarball/master | tar xz --strip-components=1
    > ./bootstrap.sh


keymaps
-------
* `<F1>` - go to previous buffer (:bp)
* `<F2>` - go to next buffer (:bn)
* `<F12>` - paste toggle

* `,e` - NERDTree
* `,p` - CtrlP fuzzy file selector
* `,a` - Ack
* `,t` - Tabular

* `//` - (un-)comment with TComment
* `<C-P>` - paste from clipboard in paste-mode
* `<C-J>` - formatting the current paragraph according to the current 'textwidth'
* `<Space>` - in normal mode temporary disable highlight search
* `,k` - move line up (modes: normal, visual, insert)
* `,j` - move line down (modes: normal, visual, insert)


screenshots
-----------

![screenshot 01](http://xfire.github.com/vimrc/screenshot_vim_01.png)
