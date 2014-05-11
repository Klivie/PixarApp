package uk.ac.shu.webarch.PixarApp

/* User of the app, can write reviews on specific films. This is the one end of a relationship linking to the review table. */

class User {
	
	/* basic properties for User class, is given an auto incremented id value by default */

	String username
	String userPassword
	String userEmail
	Integer userAge
	String userBio
	String favouriteFilm

	/* Here we want to show the set of reviews that are associated with this user, */

	Set reviews

	/* Telling the framework that reviews is actually the instances of Review, which makes the framework realise it must join to the Review class, */	

    static hasMany = [reviews: Review]
	
	/* Here we tell the framework that the other side of this association is the userReviews property within the Review class. */
	
    static mappedBy = [reviews : 'userReviews']

	/* The constraints set on the class saying that the username userpassword, and userEmail fields cannot be null, along with a max length for each. Age field has been set a minimum value of 0 and a maximum of 130. */

    static constraints = {
	username (blank: false, nullable: false, maxSize:100, unique: true);
        userPassword (blank: false, nullable: false);
        userEmail (blank: false, nullable: false, maxSize:100);
	userAge (min: 0, max: 130);
    }

    /* the mapping property used to change the way the field names are displayed in sql. */
    static mapping = {
    table 'user'
    username column: 'username'
    userPassword column: 'user_password'
    userEmail column: 'user_email'
    userAge column: 'user_age'
    userBio column: 'user_bio'
    favouriteFilm column: 'favourite_film'
    }
}
