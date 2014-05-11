package uk.ac.shu.webarch.PixarApp

/* A specific film by the studio, display a number of properties such as the film name and genre. Also shows a set of actors that play a role in the film, as well as a set of reviews the film has received from users. Includes 2 foreign keys of filmDirector and filmStudio as it is the many end of the relationship linking to the relevant tables (director & studio). */

class Film {

	String filmName
	String filmDescription
	String filmGenre
	String filmlength
	Date releaseDate
	
	/* The director of this film pulled from Director table*/
	Director filmDirector

	/* The name of the film studio which produced the film which is pulled from Studio table */
	Studio filmStudio

	/* The set of actors that are in this film */
	set filmActors

	/* The reviews which have been written about the film by users */
	set filmReviews
    
    /* Here we tell the framework that the actor property is a set of filmActor instances, the framework then knows that it must join to the filmActor table. This domain class has many sets, we also need to display the set of review instances and we do this so the framework joins to the review table. Because of this the hasMany data will specify these different sets */

    static hasMany = [
	actors : FilmActor,
	filmReviews : Review
    ]

    /* This tells us what the property at the other side of the relationship is named */

    static mappedBy = [
	actors: 'filmActors'
	filmReviews: 'filmReviews'
    ]

   
    /* Constraints to set the filmName to required */	
    static constraints = {
	filmName(nullable:false, blank:false, maxLength:256);
    }

    /* mapping property used to change the field names when displayed in sql as well as set a LOB text type for the filmDescription column. the filmDirector and filmStudio column are changed to display that they are changed to show that they are foreign keys */
    static mapping = {
	filmDirector column: 'director_fk'
	filmStudio column: 'studio_fk'
	filmName: 'film_name'
	filmDescription column 'film_description', type: 'text'
	filmGenre column 'film_genre'
	filmLength column 'film_length'
	releaseDate column 'release_date
    }
}
