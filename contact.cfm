<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link href="/projet_starter/styles/main.css" rel="stylesheet" type="text/css" media="screen" />
	    <title>Site Web</title>
		
	</head>
	<body>
		
  <nav>
    <ul>
      <li><a href="#">Accueil</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">A propos</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>


  
      <section>
      	

    <form action="process-form.cfm" method="POST">
	    <h2>Vous pouvez vous inscrire ici</h2>
		  <label for="name">Nom :</label>
		  <input type="text" id="name" name="name" required>
		
		  <label for="email">E-mail :</label>
		  <input type="email" id="email" name="email" required>
		
		  <label for="subject">Sujet :</label>
		  <input type="text" id="subject" name="subject" required>
		
		  <label for="message">Message :</label>
		  <textarea id="message" name="message" required></textarea>
		
		  <button type="submit">Envoyer</button>
	</form>
     
 </section>
  
  
  
  

	</body>
	</html>