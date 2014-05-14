
<%@ page import="uk.ac.shu.webarch.PixarApp.Film" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'film.label', default: 'Film')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-film" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
				
		
		<div id="list-film" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:link class="primary-button" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="filmName" title="${message(code: 'film.filmName.label', default: 'Film Name')}" />
					
						<g:sortableColumn property="filmDescription" title="${message(code: 'film.filmDescription.label', default: 'Film Description')}" />
					
						<th><g:message code="film.filmDirector.label" default="Film Director" /></th>
					
						<g:sortableColumn property="filmGenre" title="${message(code: 'film.filmGenre.label', default: 'Film Genre')}" />
					
						<th><g:message code="film.filmStudio.label" default="Film Studio" /></th>
					
						<g:sortableColumn property="filmlength" title="${message(code: 'film.filmlength.label', default: 'Filmlength')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${filmInstanceList}" status="i" var="filmInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${filmInstance.id}">${fieldValue(bean: filmInstance, field: "filmName")}</g:link></td>
					
						<td>${fieldValue(bean: filmInstance, field: "filmDescription")}</td>
					
						<td>${fieldValue(bean: filmInstance, field: "filmDirector")}</td>
					
						<td>${fieldValue(bean: filmInstance, field: "filmGenre")}</td>
					
						<td>${fieldValue(bean: filmInstance, field: "filmStudio")}</td>
					
						<td>${fieldValue(bean: filmInstance, field: "filmlength")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${filmInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
