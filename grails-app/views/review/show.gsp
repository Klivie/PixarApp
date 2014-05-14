
<%@ page import="uk.ac.shu.webarch.PixarApp.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="show-review" class="content scaffold-show" role="main">
			<div class="row-no-margin">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:link class="primary-button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="primary-button" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list review">
			
				<g:if test="${reviewInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="review.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${reviewInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.filmReviews}">
				<li class="fieldcontain">
					<span id="filmReviews-label" class="property-label"><g:message code="review.filmReviews.label" default="Film Reviews" /></span>
					
						<span class="property-value" aria-labelledby="filmReviews-label"><g:link controller="film" action="show" id="${reviewInstance?.filmReviews?.id}">${reviewInstance?.filmReviews?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="review.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${reviewInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.userReviews}">
				<li class="fieldcontain">
					<span id="userReviews-label" class="property-label"><g:message code="review.userReviews.label" default="User Reviews" /></span>
					
						<span class="property-value" aria-labelledby="userReviews-label"><g:link controller="user" action="show" id="${reviewInstance?.userReviews?.id}">${reviewInstance?.userReviews?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reviewInstance, action:'delete']" method="DELETE">
				<fieldset>
					<g:link class="primary-button" action="edit" resource="${reviewInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="primary-button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
