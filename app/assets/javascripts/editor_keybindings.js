var editor = ace.edit("editor");
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
editor.commands.addCommand({
	name: 'add_line_down',
	bindKey: { mac: 'Command-Return'},
	exec: function(editor) {
	     editor.navigateLineEnd()
	     editor.splitLine();
	     editor.navigateDown(1);
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor.commands.addCommand({
	name: 'add_line_above',
	bindKey: { mac: 'Shift-Command-Return'},
	exec: function(editor) {
	      editor.navigateLineStart()
	     editor.splitLine();
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor.commands.addCommand({
	name: 'indent',
	bindKey: { mac: 'Command-]'},
	exec: function(editor) {
	      editor.blockIndent()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor.commands.addCommand({
	name: 'unindent',
	bindKey: { mac: 'Command-['},
	exec: function(editor) {
	      editor.blockOutdent()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor.commands.addCommand({
	name: 'delete_line',
	bindKey: { mac: 'Shift-Ctrl-k'},
	exec: function(editor) {
	      editor.removeLines()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});