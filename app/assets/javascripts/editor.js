
var editor2 = ace.edit("editor2");
editor2.getSession().setUseWorker(false);
editor2.setTheme("ace/theme/idle_fingers");
editor2.getSession().setMode("ace/mode/ruby");
editor2.gotoLine(5);
editor2.getSession().setTabSize(2);
//keybindings are in their own files.

editor2.getSession().on('change', function(e) {

});

// This editor will be active first

var editor = ace.edit("editor");
editor.getSession().setUseWorker(false);
editor.setTheme("ace/theme/idle_fingers");
editor.getSession().setMode("ace/mode/ruby");
editor.gotoLine(5);
editor.getSession().setTabSize(2);

//keybindings are in their own files.

editor.getSession().on('change', function(e) {

});
