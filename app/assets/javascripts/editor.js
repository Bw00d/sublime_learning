
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

