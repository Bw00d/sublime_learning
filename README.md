##Sublime Learning in Rails!
<a href="https://codeclimate.com/github/Bw00d/sublime_learning">![Code Climate](https://codeclimate.com/github/Bw00d/sublime_learning.png)</a>

###Epicodus "Build anything you want" exercise.

This is an application for practicing Sublime Text 2 keyboard shortcuts. It is a continuation of my pogress with the <a href="https://github.com/Bw00d/Epicodus-clone">Epicodus_clone</a> exercise.

####Status

* I am able to create lessons.  Each lesson has a name, chapter id, content(which is inputted as markdown and retrieved with the <a href="https://github.com/vmg/redcarpet">redcarpet</a> gem so it can be styled), an editable code block(also markdown), and an answer code block which will be used to compare the result of the user input.
* The <a heref="">ace editor</a> is embedded and will allow the user to practice editing the editable code block.
* I am able to add a Sublime Text keyboard binding and use it in the editor.
* I am able to test edited code against answer code and return an alert or notice to the user depend on whether or not their input is correct.


####Todo

* Make a consolidated js file of all the relevant key bindings.
* I plan to use the <a href="https://github.com/kugaevsky/mousetrap-rails">mousetrap-rails</a> gem to record the users keystrokes to test for efficient editing.
* Set up user authentication and validation.

####Usage

It is easy to get started building lessons. There is no new lesson link so navigate to the lessons/new to create a new lesson. At this time there is also no authentication to worry about. 

Each lesson has two two editors which allows for two examples.  At the moment it is necessary to enter content into each editor or it will break the page.  I have tried to disable the second editor when @lesson.content2 is nil but it messes with the remaining editor's styling so until I fix that bug just make two examples.

The content, editable_code, and answer <strong>must</strong> be entered as markdown. Make certain to use two space for newline.

The edited code and the answer have to be exactly the same to past the test. 

####Keybindings
* delete line :  shft+ctrl+k
* delete to end of line : ctrl+k
* indent :  dmc+] !note: the indent() only indent from cursor. blockIndent() is the method that should move the entire line, however, it does not work.
* unindent :  cmd+[
* swap line up : ctrl+cmd+up
* swap line down : ctrl+cmd+down
* duplicate line down : shift+cmd+d
* toggle comment: cmd+/
* toggle block comment : cmd+opt+/ !NOT WORKING!
