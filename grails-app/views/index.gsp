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
						<h1>Welcome to Pixar App homepage</h1>
						<p>This app is designed to...</p>
					</div>
				</div>
			
			</div>
			</div>
			<div class="row">
			<div class="img-link">
				<div>
				<g:img dir="images" file="pixar.jpg" />			
				</div>
			</div>

			<div class="img-link">
				<div>
				<g:img dir="images" file="toystory3.jpg" />			
				</div>
			</div>

			<div class="img-link">
				<div>
				<g:img dir="images" file="findingnemo.jpg" />			
				</div>
			</div>
			</div>
			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
		<div class="para">
		<h1>A Brief history!</h1>
			<p>Pixar was founded in....blah blah blah</p>
		</div>
	</body>
</html>
