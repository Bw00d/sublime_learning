var editor2 = ace.edit("editor2");

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
	     editor2.moveLinesDown();
	},
	readOnly: false // false if this command should not apply in readOnly mode
});