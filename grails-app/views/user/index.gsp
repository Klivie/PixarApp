
<%@ page import="uk.ac.shu.webarch.PixarApp.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-user" class="content scaffold-list" role="main">
			<div class="row-no-margin">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:link class="primary-button" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="userPassword" title="${message(code: 'user.userPassword.label', default: 'User Password')}" />
					
						<g:sortableColumn property="userEmail" title="${message(code: 'user.userEmail.label', default: 'User Email')}" />
					
						<g:sortableColumn property="userAge" title="${message(code: 'user.userAge.label', default: 'User Age')}" />
					
						<g:sortableColumn property="favouriteFilm" title="${message(code: 'user.favouriteFilm.label', default: 'Favourite Film')}" />
					
						<g:sortableColumn property="userBio" title="${message(code: 'user.userBio.label', default: 'User Bio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "userPassword")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "userEmail")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "userAge")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "favouriteFilm")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "userBio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
