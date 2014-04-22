##Sublime Learning in Rails!

###Epicodus "Build anything you want" exercise.

This is an application for practicing Sublime Text 2 keyboard shortcuts. It is a continuation of my pogress with the <a href="https://github.com/Bw00d/Epicodus-clone">Epicodus_clone</a> exercise.

####Status

* I am able to create lessons.  Each lesson has a name, chapter id, content - which is inputted as markdown and retrieved with the <a href="https://github.com/vmg/redcarpet">redcarpet</a> gem so it can be styled, an editable code block -  also markdown, and an answer code block which will be used to compare the result of the user input.
* The <a heref="">ace editor</a> is embedded and will allow the user to practice editing the editable code block.
* I am able to add a Sublime Text keyboard binding and use it in the editor.


####Todo

* Make a consolidated js file of all the relevant key bindings.
* Write jQuery to test edited code against answer code.
* Write notices and errors.
* I plan to use the <a href="https://github.com/kugaevsky/mousetrap-rails">mousetrap-rails</a> gem to record the users keystrokes to test for efficient editing.
* Set up user authentication and validation.


