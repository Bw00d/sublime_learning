
var editor2 = ace.edit("editor2");
editor2.getSession().setUseWorker(false);
editor2.setTheme("ace/theme/idle_fingers");
editor2.getSession().setMode("ace/mode/ruby");
editor2.gotoLine(5);
editor2.getSession().setTabSize(2);

editor2.commands.addCommand({
	name: 'swap_line_up',
	bindKey: { mac: 'Ctrl-Command-Up'},
	exec: function(editor2) {
	     editor2.moveLinesUp();
	},
	readOnly: false // false if this command should not apply in readOnly mode
});

editor2.commands.addCommand({
	name: 'swap_line_down',
	bindKey: { mac: 'Ctrl-Command-Down'},
	exec: function(editor2) {
	     editor.moveLinesDown();
	},
	readOnly: false // false if this command should not apply in readOnly mode
});

editor2.getSession().on('change', function(e) {

});

// This editor will be active first

var editor = ace.edit("editor");
editor.getSession().setUseWorker(false);
editor.setTheme("ace/theme/idle_fingers");
editor.getSession().setMode("ace/mode/ruby");
editor.gotoLine(5);
editor.getSession().setTabSize(2);

editor.commands.addCommand({
	name: 'swap_line_up',
	bindKey: { mac: 'Ctrl-Command-Up'},
	exec: function(editor) {
	     editor.moveLinesUp();
	},
	readOnly: false // false if this command should not apply in readOnly mode
});

editor.commands.addCommand({
	name: 'swap_line_down',
	bindKey: { mac: 'Ctrl-Command-Down'},
	exec: function(editor) {
	     editor.moveLinesDown();
	},
	readOnly: false // false if this command should not apply in readOnly mode
});

editor.getSession().on('change', function(e) {

});
