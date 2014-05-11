<%@ page import="uk.ac.shu.webarch.PixarApp.Film" %>



<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmName', 'error')} required">
	<label for="filmName">
		<g:message code="film.filmName.label" default="Film Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="filmName" required="" value="${filmInstance?.filmName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmActors', 'error')} ">
	<label for="filmActors">
		<g:message code="film.filmActors.label" default="Film Actors" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${filmInstance?.filmActors?}" var="f">
    <li><g:link controller="filmActor" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="filmActor" action="create" params="['film.id': filmInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'filmActor.label', default: 'FilmActor')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmDescription', 'error')} ">
	<label for="filmDescription">
		<g:message code="film.filmDescription.label" default="Film Description" />
		
	</label>
	<g:textField name="filmDescription" value="${filmInstance?.filmDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmDirector', 'error')} required">
	<label for="filmDirector">
		<g:message code="film.filmDirector.label" default="Film Director" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="filmDirector" name="filmDirector.id" from="${uk.ac.shu.webarch.PixarApp.Director.list()}" optionKey="id" required="" value="${filmInstance?.filmDirector?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmGenre', 'error')} ">
	<label for="filmGenre">
		<g:message code="film.filmGenre.label" default="Film Genre" />
		
	</label>
	<g:textField name="filmGenre" value="${filmInstance?.filmGenre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmReviews', 'error')} ">
	<label for="filmReviews">
		<g:message code="film.filmReviews.label" default="Film Reviews" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${filmInstance?.filmReviews?}" var="f">
    <li><g:link controller="review" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="review" action="create" params="['film.id': filmInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'review.label', default: 'Review')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmStudio', 'error')} required">
	<label for="filmStudio">
		<g:message code="film.filmStudio.label" default="Film Studio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="filmStudio" name="filmStudio.id" from="${uk.ac.shu.webarch.PixarApp.Studio.list()}" optionKey="id" required="" value="${filmInstance?.filmStudio?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'filmlength', 'error')} ">
	<label for="filmlength">
		<g:message code="film.filmlength.label" default="Filmlength" />
		
	</label>
	<g:textField name="filmlength" value="${filmInstance?.filmlength}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filmInstance, field: 'releaseDate', 'error')} required">
	<label for="releaseDate">
		<g:message code="film.releaseDate.label" default="Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="releaseDate" precision="day"  value="${filmInstance?.releaseDate}"  />
</div>

