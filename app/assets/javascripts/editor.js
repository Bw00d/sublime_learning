var line2 = $('#line-number2').text();
var editor2 = ace.edit("editor2");
var editorheight2 = $('#editor-height2').text()
editor2.getSession().setUseWorker(false);
editor2.setTheme("ace/theme/idle_fingers");
editor2.getSession().setMode("ace/mode/ruby");
editor2.gotoLine(line2);
editor2.getSession().setTabSize(2);

//keybindings are in their own files.

editor2.getSession().on('change', function(e) {

});

// This editor will be active first
var line = $('#line-number').text();
var editor = ace.edit("editor");
editor.getSession().setUseWorker(false);
editor.setTheme("ace/theme/idle_fingers");
editor.getSession().setMode("ace/mode/ruby");
editor.gotoLine(line);
editor.getSession().setTabSize(2);

//keybindings are in their own files.

editor.getSession().on('change', function(e) {

});
// $(document).ready( function() {
// 	var editorheight = $('#editor-height').text();
// 	$('#editor2').height(editorheight2.toString() + "px");
// });
 


