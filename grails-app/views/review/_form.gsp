<%@ page import="uk.ac.shu.webarch.PixarApp.Review" %>



<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="review.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rating" type="number" min="0" max="5" value="${reviewInstance.rating}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'filmReviews', 'error')} required">
	<label for="filmReviews">
		<g:message code="review.filmReviews.label" default="Film Reviews" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="filmReviews" name="filmReviews.id" from="${uk.ac.shu.webarch.PixarApp.Film.list()}" optionKey="id" required="" value="${reviewInstance?.filmReviews?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="review.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${reviewInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'userReviews', 'error')} required">
	<label for="userReviews">
		<g:message code="review.userReviews.label" default="User Reviews" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="userReviews" name="userReviews.id" from="${uk.ac.shu.webarch.PixarApp.User.list()}" optionKey="id" required="" value="${reviewInstance?.userReviews?.id}" class="many-to-one"/>
</div>

