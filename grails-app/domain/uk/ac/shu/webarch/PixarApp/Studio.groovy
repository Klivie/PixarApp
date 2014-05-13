package uk.ac.shu.webarch.PixarApp

/* A studio which creates a number of different films, is the one end of a relationship to the film table. A studio may produce many films, but a film is only produced by one studio. */

class Studio {

	String studioName
	Integer studioYearFounded
	String studioAbout

	/* The set of films this studio has made. We use set instead of list because the order does not matter. */

	Set films

    /* Constraint setting studioName as a required field and a max length of 256 */

    static constraints = {
	studioName(nullable:false,blank:false,maxLength:256)
    }

    /* a hasMany property telling the framework that the set of films is just a set of film instances, the table now knows to join to the film table */

    static hasMany = [films: Film]

    /* The mappedBy propety tells the framework that the property at the other side of the relationship is film, it tells the framework that the set "films" is to show the film instances where filmStudio is this. */

    static mappedBy = [films: 'filmStudio']

    /* In the mapping property here we change the sql names of the table, as well as the column names. We also change the datatype for the studioHistory column from varchar to the LOB text type. */

    static mapping = {
    table 'studio'
    studioName column: 'studio_name'
    studioYearFounded column: 'year_founded'
    studioAbout column: 'studio_about', type:'text'
    }
}
