<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to the Pixar App"</title>			
	</head>
	<body>
		<div id="page-body" role="main">
			<div class ="row">
			<div id="main-img">
				<div class="squeeze">
					<g:img dir="images" file="monstersuni.jpg" /> 
					<div id="main-img-text">
						<h1>Welcome to Pixar App homepage!</h1><br />
						<p>This app is designed to sway your opinion on that film your "just not sure about". Users can browse the app to look at films and read reviews other people have left. We hope it will help you decide!</p><br />
						<p>We showcase all of the Pixar movies and if your interested about them come take a look! If Pixar isn't what your after then pleae change the studio to view other films!</p>
					</div>
				</div>
			
			</div>
			</div>
			<div class="row">
			<div class="img-link">
				<div>
				<g:img dir="images" file="pixar.jpg" />
				<div class="img-link-text">
				<p>Come look at the different films we have listed and the reviews for each!</p>
				<g:link controller="Film">Browse Films Here >></g:link>
				</div>			
				</div>
			</div>

			<div class="img-link">
				<div>
				<g:img dir="images" file="toystory3.jpg" />
				<div class="img-link-text">
				<p>Look at the actors we have stored and what films they appear in!</p>
				<g:link controller="Actor">Browse Actors Here >></g:link>
				</div>			
				</div>
			</div>

			<div class="img-link">
				<div>
				<g:img dir="images" file="findingnemo.jpg" />	
				<div class="img-link-text">
				<p>Browse the users we have and look at what they're reviews!</p>
				<g:link controller="User">Browse Users Here >></g:link>
				</div>		
				</div>
			</div>
			</div>
		</div>
		<div class="para">
		<h1>A Brief history!</h1>
			<p>Pixar Animation Studios is an American CGI animation film studio based in Emeryville, California, United States. </p><br/><p> They orginally started in 1979 as the Graphics Group, a part of the Computer Division of Lucasfilm before it was acquired by Apple co-founder Steve Jobs in 1986.</p><br/> The Walt Disney Company later acquired Pixar in 2006.</p> <br />
<p>The studio has earned 24 Academy Awards, 6 Golden Globes, and 3 Grammys, among many other awards and acknowledgments. Its films have made over $6.3 billion worldwide. It is best known for its CGI-animated feature films which are created with PhotoRealistic RenderMan, its own implementation of the industry-standard RenderMan image-rendering API used to generate high-quality images.</p>
		</div>
		<g:link> &laquo; Change Studio</g:link>
	</body>
</html>
