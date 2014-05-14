<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'film.label', default: 'Film')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-film" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
				
		</div>
		<div id="create-film" class="content scaffold-create" role="main">
			<div class="row-no-margin">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:link class="primary-button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${filmInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${filmInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:filmInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
						<g:submitButton name="create" class="primary-button create" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
