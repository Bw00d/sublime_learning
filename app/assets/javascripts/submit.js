$(document).ready(function() {
	$('#editor-button').click( function() {
		input = editor.getValue().trim();
		answer = $('#answer-block').html().trim();
		console.log(answer);
		console.log(input);
		result = answer.localeCompare(input);
		$('#editor-button').val('Reset');
		if (result == 0 ) {
			alert("That's correct")
		} else {
			alert("Try again")
		}
	});
});

// $("#text-search").on("input", function() {
//     $("#find").val('Clear');  
// });
// $("#find").click( function() {
//     $('#feeder_box').removeHighlight();
//     $('#text-search').val('');
//     $("#find").val("Find");
// });