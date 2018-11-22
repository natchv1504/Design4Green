<?php
	header('Content-Type: application/json');
		
	$bd=mysqli_connect("localhost","root","","questionnaire");
	// Check connection
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	$result = array();
	 
	if(!isset($_POST['functionName']) ) { $result['error'] = 'Erreur nom fonction'; }
	
	if(!isset($result['error']) ) {

        if($_POST['functionName'] == 'getQuestions') {
			//requete récup question/reponse
			$req = 'Select * From question';
			
			$res = mysqli_query($bd, $req);
			while ($donnees = mysqli_fetch_assoc($res))
			{
				echo $donnees;
			}
					
			
			$result = $donnees;
        }

    }

    echo json_encode($result);
	
	mysqli_close($bd);
?>
