<%@ page import="uk.ac.shu.webarch.PixarApp.Actor" %>



<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'actorName', 'error')} required">
	<label for="actorName">
		<g:message code="actor.actorName.label" default="Actor Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="actorName" required="" value="${actorInstance?.actorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'actorAge', 'error')} required">
	<label for="actorAge">
		<g:message code="actor.actorAge.label" default="Actor Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="actorAge" type="number" value="${actorInstance.actorAge}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'actorBio', 'error')} ">
	<label for="actorBio">
		<g:message code="actor.actorBio.label" default="Actor Bio" />
		
	</label>
	<g:textField name="actorBio" value="${actorInstance?.actorBio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: actorInstance, field: 'films', 'error')} ">
	<label for="films">
		<g:message code="actor.films.label" default="Films" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${actorInstance?.films?}" var="f">
    <li><g:link controller="filmActor" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="filmActor" action="create" params="['actor.id': actorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'filmActor.label', default: 'FilmActor')])}</g:link>
</li>
</ul>

</div>

