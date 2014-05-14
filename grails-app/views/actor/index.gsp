
<%@ page import="uk.ac.shu.webarch.PixarApp.Actor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'actor.label', default: 'Actor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-actor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="list-actor" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="actorName" title="${message(code: 'actor.actorName.label', default: 'Actor Name')}" />
					
						<g:sortableColumn property="actorAge" title="${message(code: 'actor.actorAge.label', default: 'Actor Age')}" />
					
						<g:sortableColumn property="actorBio" title="${message(code: 'actor.actorBio.label', default: 'Actor Bio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${actorInstanceList}" status="i" var="actorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${actorInstance.id}">${fieldValue(bean: actorInstance, field: "actorName")}</g:link></td>
					
						<td>${fieldValue(bean: actorInstance, field: "actorAge")}</td>
					
						<td>${fieldValue(bean: actorInstance, field: "actorBio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${actorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
