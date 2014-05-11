package uk.ac.shu.webarch.PixarApp

/* A review, which is the link between the film and user table, but with added fields of rating and notes, this meaning the user can add a review a specific film with a rating and a explanation why they gave this rating (notes). The table is used to see reviews from users for specific films. The table is the many end of the relationships from both the user and the film tables and will display a foreign key of both. This is because a user can have many different reviews, but a review is only written by one user. As well as a film can have many reviews, but a review is for only one film. */

class Review {

	/* The user id pulled from the user table */
	User userReviews

	/* The film id pulled from the film id */
	Film filmReviews

	Integer rating
	String notes

    /* Constraint just to set the rating given to a no nullable field which has to be between 1-5 */
    static constraints = {
	rating(nullable:false, blank:false, min:0, max:5);
    }

    /* Changing the display names of the fields, as well as changing the text type of the notes column to LOB text */
    static mapping = {
    table 'review'
    userReviews column: 'user_fk'
    filmReviews column: 'film_fk'
    rating column: 'film_rating_out_of_5'
    notes column: 'notes', type: 'text'
    }
}
