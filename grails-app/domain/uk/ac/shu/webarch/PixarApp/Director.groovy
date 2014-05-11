package uk.ac.shu.webarch.PixarApp

/* Is the table for directors, is the one end of the relationship to film. A director can have many films, but a film can only have one director, this is different in specific circumstances but for the sake of our app we are saying a film only has one director. table displays basic information such as name, age and notes/biography, as well as the set of films they have directed. */

class Director {

	String directorName
	Integer directorAge
	String notes

	/* This is the set of films that this director has directed */

	Set films
    
    /* The hasMany property which tells the framework that films is just a set of film instances which teaches the framework to link to the film table */

    static hasMany = [films: Film]

    /* The mappedBy propety allows us to tell the framework that the property at the other side of the relationship is filmDirector of the film class */

    static mappedBy = [films: 'filmDirector']
     
    /* Constraints just to set directorName as a required field as well as giving it a maximum length */
    static constraints = {
	directorName(nullable:false, blank:false,maxLength:256);
    }

    /* mapping property to change the way the field names are viewed in the table, as well as changing the notes column to a LOB text type */
    static mapping = {
    table 'director'
    directorName column: 'director_name'
    directorAge column: 'director_age'
    notes column: 'director_bio', type:'text'
    }
}
