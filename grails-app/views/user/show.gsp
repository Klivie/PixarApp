
<%@ page import="uk.ac.shu.webarch.PixarApp.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.userPassword}">
				<li class="fieldcontain">
					<span id="userPassword-label" class="property-label"><g:message code="user.userPassword.label" default="User Password" /></span>
					
						<span class="property-value" aria-labelledby="userPassword-label"><g:fieldValue bean="${userInstance}" field="userPassword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.userEmail}">
				<li class="fieldcontain">
					<span id="userEmail-label" class="property-label"><g:message code="user.userEmail.label" default="User Email" /></span>
					
						<span class="property-value" aria-labelledby="userEmail-label"><g:fieldValue bean="${userInstance}" field="userEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.userAge}">
				<li class="fieldcontain">
					<span id="userAge-label" class="property-label"><g:message code="user.userAge.label" default="User Age" /></span>
					
						<span class="property-value" aria-labelledby="userAge-label"><g:fieldValue bean="${userInstance}" field="userAge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.favouriteFilm}">
				<li class="fieldcontain">
					<span id="favouriteFilm-label" class="property-label"><g:message code="user.favouriteFilm.label" default="Favourite Film" /></span>
					
						<span class="property-value" aria-labelledby="favouriteFilm-label"><g:fieldValue bean="${userInstance}" field="favouriteFilm"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.reviews}">
				<li class="fieldcontain">
					<span id="reviews-label" class="property-label"><g:message code="user.reviews.label" default="Reviews" /></span>
					
						<g:each in="${userInstance.reviews}" var="r">
						<span class="property-value" aria-labelledby="reviews-label"><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.userBio}">
				<li class="fieldcontain">
					<span id="userBio-label" class="property-label"><g:message code="user.userBio.label" default="User Bio" /></span>
					
						<span class="property-value" aria-labelledby="userBio-label"><g:fieldValue bean="${userInstance}" field="userBio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
