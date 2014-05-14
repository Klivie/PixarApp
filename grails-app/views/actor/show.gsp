
<%@ page import="uk.ac.shu.webarch.PixarApp.Actor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'actor.label', default: 'Actor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-actor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="show-actor" class="content scaffold-show" role="main">
			<div class="row-no-margin">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:link class="primary-button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="primary-button" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>	
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list actor">
			
				<g:if test="${actorInstance?.actorName}">
				<li class="fieldcontain">
					<span id="actorName-label" class="property-label"><g:message code="actor.actorName.label" default="Actor Name" /></span>
					
						<span class="property-value" aria-labelledby="actorName-label"><g:fieldValue bean="${actorInstance}" field="actorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actorInstance?.actorAge}">
				<li class="fieldcontain">
					<span id="actorAge-label" class="property-label"><g:message code="actor.actorAge.label" default="Actor Age" /></span>
					
						<span class="property-value" aria-labelledby="actorAge-label"><g:fieldValue bean="${actorInstance}" field="actorAge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actorInstance?.actorBio}">
				<li class="fieldcontain">
					<span id="actorBio-label" class="property-label"><g:message code="actor.actorBio.label" default="Actor Bio" /></span>
					
						<span class="property-value" aria-labelledby="actorBio-label"><g:fieldValue bean="${actorInstance}" field="actorBio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actorInstance?.films}">
				<li class="fieldcontain">
					<span id="films-label" class="property-label"><g:message code="actor.films.label" default="Films" /></span>
					
						<g:each in="${actorInstance.films}" var="f">
						<span class="property-value" aria-labelledby="films-label"><g:link controller="filmActor" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:actorInstance, action:'delete']" method="DELETE">
				<fieldset>
					<g:link class="primary-button" action="edit" resource="${actorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="primary-button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
