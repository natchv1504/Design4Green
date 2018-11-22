$(document).ready(function() {
	request();
	
	function request() {
		$.ajax({
			type: "POST",
			url: 'Questionnaire.php',
			dataType: 'json',
			data: {functionName: 'getQuestions'},

			success: function (data) {
				createQnA();
				console.log(data);
				//traitement tableau (data)			
			}
		});
	}

	function createQnA() {
		//creation en fonction du type (checkbox, textarea, radiobutton)
		var cbh = document.getElementById('answers');

		var checkbox = document.createElement('input');
		checkbox.type = "checkbox";
		checkbox.name = "name";
		checkbox.value = "value";
		checkbox.id = "id";

		var label = document.createElement('label')
		label.htmlFor = "id";
		label.appendChild(document.createTextNode('text for label after checkbox'));

		cbh.appendChild(checkbox);
		cbh.appendChild(label);
		
	}

})