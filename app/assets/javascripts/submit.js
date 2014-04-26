$(document).ready(function() {
	// first editor
	$('#editor-button').click( function() {
		$('#editor-button').hide();
		$('#reset-button').show();
		input = editor.getValue().trim();
		answer = $('#answer-block').html().trim();
		console.log(answer);
		console.log(input);
		result = answer.localeCompare(input);
		if (result == 0 ) {
			$('#notice-correct').show();
		} else {
			$('#alert-wrong').show();
		}
	});
	$('#reset-button').click( function() {
		$('#reset-button').hide();
		$('#editor-button').show();
		location.reload();

	});

	// second editor
	$('#editor-button2').click( function() {
		$('#editor-button2').hide();
		$('#reset-button2').show();
		input = editor2.getValue().trim();
		answer = $('#answer-block2').html().trim();
		console.log(answer);
		console.log(input);
		result = answer.localeCompare(input);
		$('#editor-button2').val('Reset');
		if (result == 0 ) {
			$('#notice-correct2').show();
			$('#next').removeClass('inactive');
			$('#next').addClass('active');
		} else {
			$('#alert-wrong2').show();
		}
	});
	$('#reset-button2').click( function() {
		$('#reset-button2').hide();
		$('#editor-button2').show();
		location.reload();
	});

});
