##Sublime Learning in Rails!
<a href="https://codeclimate.com/github/Bw00d/sublime_learning">![Code Climate](https://codeclimate.com/github/Bw00d/sublime_learning.png)</a>

###Epicodus "Build anything you want" exercise.

This is an application for practicing Sublime Text 2 keyboard shortcuts. It is a continuation of my pogress with the <a href="https://github.com/Bw00d/Epicodus-clone">Epicodus_clone</a> exercise.

####Status

* I am able to create lessons.  Each lesson has a name, chapter id, content(which is inputted as markdown and retrieved with the <a href="https://github.com/vmg/redcarpet">redcarpet</a> gem so it can be styled), an editable code block(also markdown), and an answer code block which will be used to compare the result of the user input.
* The <a heref="">ace editor</a> is embedded and will allow the user to practice editing the editable code block.
* I am able to add a Sublime Text keyboard binding and use it in the editor.
* I am able to test edited code against answer code and return an alert or notice to the user depend on whether or not their input is correct.
* I can assign the cursor to a specific line for each lesson
* User authentication and validation complete.
* Foundation offcanvas to works on lesson/show pages but not on others.  


####Todo

* Make a consolidated js file of all the relevant key bindings.
* I plan to use the <a href="https://github.com/kugaevsky/mousetrap-rails">mousetrap-rails</a> gem to record the users keystrokes to test for efficient editing.
* Research whether or not I can just edit the vim keybindings instead of chaining methods to make Sublime keybindings.
* Set editor height for each lesson
* DRY up code so admin can add editors to code as necessary instead of having two editors per lesson.  

####Issues

* The ace editor has many default keybindigs and some of them produce conflicting or unexpected behavior.
* Foundation offcanvas to works on lesson/show pages but not on others. The javascript console complains of "Cannot read property 'env' of null" and references the ace.js file on the pages that don't work. This may be the cause. These pages do not contain an editor.
* I am finding it difficult to get mousetrap to record keystrokes.
* So far attempts to change the height of the editor for each lesson have caused the syntax highlighting to disappear and have had no effect on the editor height.
* I am unable to get the offcanvas menu to work. The way the asset pipeline requires files may be causing a conflict. 
* Trying to compare angle brackets between the editor and the answer always returns unequal. This may be an effect of using markdown.


####Usage

It is easy to get started building lessons. There is no new lesson link so navigate to the lessons/new to create a new lesson. At this time there is also no authentication to worry about. 

Each lesson has two two editors which allows for two examples.  At the moment it is necessary to enter content into each editor or it will break the page.  I have tried to disable the second editor when @lesson.content2 is nil but it messes with the remaining editor's styling so until I fix that bug just make two examples.

The content, editable_code, and answer <strong>must</strong> be entered as markdown. Make certain to use two space for newline.

The edited code and the answer have to be exactly the same to past the test. 

####Keybindings
**Note** Currently keybindings only work on Mac. I will update with Windows keybings soon.
* delete line :  shft+ctrl+k
* delete to end of line : ctrl+k
* indent :  dmc+] !note: the indent() only indent from cursor. blockIndent() is the method that should move the entire line, however, it does not work.
* unindent :  cmd+[
* swap line up : ctrl+cmd+up
* swap line down : ctrl+cmd+down
* duplicate line down : shift+cmd+d
* toggle comment: cmd+/
* toggle block comment : cmd+opt+/ !NOT WORKING!
