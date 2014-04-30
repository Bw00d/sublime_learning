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
editor2.commands.addCommand({
	name: 'add_line_down',
	bindKey: { mac: 'Command-Return'},
	exec: function(editor2) {
	     editor2.navigateLineEnd()
	     editor2.splitLine();
	     editor2.navigateDown(1);
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor2.commands.addCommand({
	name: 'add_line_above',
	bindKey: { mac: 'Shift-Command-Return'},
	exec: function(editor2) {
	     editor2.navigateLineStart()
	     editor2.splitLine();
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor2.commands.addCommand({
	name: 'indent',
	bindKey: { mac: 'Command-]'},
	exec: function(editor2) {
	      editor2.indent()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor2.commands.addCommand({
	name: 'unindent',
	bindKey: { mac: 'Command-['},
	exec: function(editor2) {
	      editor2.blockOutdent()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor2.commands.addCommand({
	name: 'delete_line',
	bindKey: { mac: 'Shift-Ctrl-k'},
	exec: function(editor2) {
	      editor2.removeLines()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor2.commands.addCommand({
	name: 'delete_to_end_of_line',
	bindKey: { mac: 'Ctrl-k'},
	exec: function(editor2) {
	      editor2.removeToLineEnd()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});
editor2.commands.addCommand({
	name: 'toggle_block_comment',
	bindKey: { mac: 'Command-Option-/'},
	exec: function(editor2) {
	      editor2.toggleBlockComment()
	},
	readOnly: false // false if this command should not apply in readOnly mode
});


