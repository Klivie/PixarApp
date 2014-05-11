package uk.ac.shu.webarch.PixarApp

/* An actor/actress of a film, showing basic properties such as name, and age. Is the one end of a relationship between actor and filmActor tables. */

class Actor {

	String actorName
	int actorAge=1
	String  actorBio
	
	/* A set displaying a number of films the actor/actress has appeared in */
	set actorFilms 

    /* The hasMany property telling the framework that actorFilms is just the instances of actorFilm so it knows to link to the filmActor table */
    static hasMany = [actorFilms : filmActor]

    /* The mappedBy property tells the framework that the property name in the filmActor table is actorFilms */
    static mappedBy = [actorFilms : 'actorFilms']

    /* Constaint to set actorName to a non nullable field */
    static constraints = {
	actorName(nullable:false, blank:false, maxLength:256);
    }

    /* mapping to make the field names more readble in sql, as well as setting a LOb text type for the actorBio column */
    static mapping = {
	actorName column: 'actor_name'
	actorAge column: 'actor_age'
	actorBio column: 'actor_bio', type: 'text'
    }
}
