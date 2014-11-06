fj - task manager (v0.5.1)
==========================

jf, stands for jot and is a simple command-line task manager written in Ruby. Inspired by [t-](http://www.penzba.co.uk/t-/t-.html) which was written in Python.
_Jf is a fork of the J project_


Install
--------

       gem install jf

Note
-----

As of version 0.6.11, the executable is available as both "j" and "jot". So feel free to use whichever you feel is world changing ;)

Usage
-------

* List todo tasks: `jf`

* List all tasks: `jf -a`

* List finished tasks: `jf -f`

* Mark a task as done: `jf -m <key>`
  For example: `jf -m 3`

* Delete a task: `jf -d <key>`

* Clear task list by deleting the *.todo* file (will be recreated later when needed): `jf -c`

* Display the scroll to use the magic: `jf -h`

Key is a number that you will find next to a task, when you list tasks. It isn't the same everytime. So watch out!

**All tasks are stored in the *.todo* file in your *$HOME* directory. However, if your current directory contains a *.todo* file, then that file will be used.**
