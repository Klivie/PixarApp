
<%@ page import="uk.ac.shu.webarch.PixarApp.Film" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'film.label', default: 'Film')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-film" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			
		<div id="show-film" class="content scaffold-show" role="main">
			<div class="row-no-margin">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:link class="primary-button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="primary-button" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list film">
			
				<g:if test="${filmInstance?.filmName}">
				<li class="fieldcontain">
					<span id="filmName-label" class="property-label"><g:message code="film.filmName.label" default="Film Name" /></span>
					
						<span class="property-value" aria-labelledby="filmName-label"><g:fieldValue bean="${filmInstance}" field="filmName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.filmActors}">
				<li class="fieldcontain">
					<span id="filmActors-label" class="property-label"><g:message code="film.filmActors.label" default="Film Actors" /></span>
					
						<g:each in="${filmInstance.filmActors}" var="f">
						<span class="property-value" aria-labelledby="filmActors-label"><g:link controller="filmActor" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.filmDescription}">
				<li class="fieldcontain">
					<span id="filmDescription-label" class="property-label"><g:message code="film.filmDescription.label" default="Film Description" /></span>
					
						<span class="property-value" aria-labelledby="filmDescription-label"><g:fieldValue bean="${filmInstance}" field="filmDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.filmDirector}">
				<li class="fieldcontain">
					<span id="filmDirector-label" class="property-label"><g:message code="film.filmDirector.label" default="Film Director" /></span>
					
						<span class="property-value" aria-labelledby="filmDirector-label"><g:link controller="director" action="show" id="${filmInstance?.filmDirector?.id}">${filmInstance?.filmDirector?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.filmGenre}">
				<li class="fieldcontain">
					<span id="filmGenre-label" class="property-label"><g:message code="film.filmGenre.label" default="Film Genre" /></span>
					
						<span class="property-value" aria-labelledby="filmGenre-label"><g:fieldValue bean="${filmInstance}" field="filmGenre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.filmReviews}">
				<li class="fieldcontain">
					<span id="filmReviews-label" class="property-label"><g:message code="film.filmReviews.label" default="Film Reviews" /></span>
					
						<g:each in="${filmInstance.filmReviews}" var="f">
						<span class="property-value" aria-labelledby="filmReviews-label"><g:link controller="review" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.filmStudio}">
				<li class="fieldcontain">
					<span id="filmStudio-label" class="property-label"><g:message code="film.filmStudio.label" default="Film Studio" /></span>
					
						<span class="property-value" aria-labelledby="filmStudio-label"><g:link controller="studio" action="show" id="${filmInstance?.filmStudio?.id}">${filmInstance?.filmStudio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.filmlength}">
				<li class="fieldcontain">
					<span id="filmlength-label" class="property-label"><g:message code="film.filmlength.label" default="Filmlength" /></span>
					
						<span class="property-value" aria-labelledby="filmlength-label"><g:fieldValue bean="${filmInstance}" field="filmlength"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="film.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:formatDate date="${filmInstance?.releaseDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:filmInstance, action:'delete']" method="DELETE">
			<fieldset>
					<g:link class="primary-button" action="edit" resource="${filmInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="primary-button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
			</g:form>
		</div>
	</body>
</html>
