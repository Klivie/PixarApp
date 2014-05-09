package uk.ac.shu.webarch.PixarApp

class User {

	String username
	String userpassword
	String userEmail
	Integer age
	String userBio
	String favouriteFilm

    static constraints = {
	username blank: false, nullable: false
        userpassword blank: false, nullable: false
        userEmail blank: false, nullable: false
    }
}
