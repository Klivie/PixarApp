package uk.ac.shu.webarch.PixarApp

/* The table to resolve the film - actor many to many relationship, shows which actors appear in which specific film, as well as the characted played, is the many link for the relationships from the film table, and actor table. */

class FilmActor {
	
	/* The film id pulled from the Film table */
	Film filmActors

	/* The id for the actor, pulled from the Actor table */
 	Actor actorFilms

	String filmCharacterPlayed
	
    /* constraint used to make the filmCharactedPlayed column requires, as well as setting it a max length */
    static constraints = {
	filmCharacterPlayed(nullable:false, blank:false, maxLength:256);
    }

    /* Changing the display names of the fields and showing which foreign keys are included in the table */
    static mapping = {
    table 'film_actor'
    filmActors column: 'film_fk'
    actorFilms column: 'actor_fk'
    filmCharacterPlayed column: 'character_played'
    }
}
