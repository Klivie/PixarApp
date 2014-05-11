<%@ page import="uk.ac.shu.webarch.PixarApp.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="100" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userPassword', 'error')} required">
	<label for="userPassword">
		<g:message code="user.userPassword.label" default="User Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userPassword" required="" value="${userInstance?.userPassword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userEmail', 'error')} required">
	<label for="userEmail">
		<g:message code="user.userEmail.label" default="User Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userEmail" maxlength="100" required="" value="${userInstance?.userEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userAge', 'error')} required">
	<label for="userAge">
		<g:message code="user.userAge.label" default="User Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="userAge" type="number" min="0" max="130" value="${userInstance.userAge}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'favouriteFilm', 'error')} ">
	<label for="favouriteFilm">
		<g:message code="user.favouriteFilm.label" default="Favourite Film" />
		
	</label>
	<g:textField name="favouriteFilm" value="${userInstance?.favouriteFilm}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'reviews', 'error')} ">
	<label for="reviews">
		<g:message code="user.reviews.label" default="Reviews" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.reviews?}" var="r">
    <li><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="review" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'review.label', default: 'Review')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userBio', 'error')} ">
	<label for="userBio">
		<g:message code="user.userBio.label" default="User Bio" />
		
	</label>
	<g:textField name="userBio" value="${userInstance?.userBio}"/>
</div>

