
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
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-actor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
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
			
				<g:if test="${actorInstance?.actors}">
				<li class="fieldcontain">
					<span id="actors-label" class="property-label"><g:message code="actor.actors.label" default="Actors" /></span>
					
						<g:each in="${actorInstance.actors}" var="a">
						<span class="property-value" aria-labelledby="actors-label"><g:link controller="filmActor" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:actorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${actorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
