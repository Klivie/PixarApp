import uk.ac.shu.webarch.PixarApp.*

class BootStrap {

/* Basic bootstrapping instructions used to add test/reference data to the database when app is run. Is used to test functionality of the app so I've had to create a studio, directors, numerous films, numerous users. */

    def init = { servletContext ->

	def pixar_studio = Studio.findByStudioName('Pixar Animation Studios') ?: new Studio(studioName:'Pixar Animation Studios', studioYearFounded:'1986', studioAbout:'Located in Emeryville, California, Pixar Animation Studios has created a claimed animated feature and short films for over 25 years').save();
	
	def jonL_director = Director.findByDirectorName('John Lasseter') ?: new Director(directorName:'John Lasseter', directorAge:'57', notes:'John Lasseter was born on January 12, 1957 in Hollywood, Los Angeles, California, USA as John Alan Lasseter. He is a producer and director, known for Toy Story (1995), Cars (2006) and Toy Story 2 (1999). He is married to Nancy Lasseter. They have five children.').save();	

	def PeteD_director = Director.findByDirectorName('Pete Docter') ?: new Director(directorName:'Pete Docter', directorAge:'45', notes:'Pete Docter was born on October 9, 1968 in Bloomington, Minnesota, USA as Peter Hans Docter. He is a writer and director, known for Up (2009), Monsters, Inc. (2001) and WALL·E (2008). He is married to Sharon Docter. They have two children.').save();	

	def AndrewS_director = Director.findByDirectorName('Andrew Stanton') ?: new Director(directorName:'Andrew Stanton', directorAge:'48', notes:'Oscar-winning filmmaker Andrew Stanton was raised in Rockport, Massachusetts. He was educated at The California Institute of the Arts (or "CalArts") in Los Angeles, where he studied character animation. After graduation, Stanton began working as a writer on the TV series Mighty Mouse, the New Adventures (1987). ').save();

	def BradB_director = Director.findByDirectorName('Brad Bird') ?: new Director(directorName:'Brad Bird', directorAge:'56', notes:'Brad Bird was born on September 24, 1957 in Kalispell, Montana, USA as Phillip Bradley Bird. He is known for his work on Ratatouille (2007), The Simpsons (1989) and The Incredibles (2004). He has been married to Elizabeth Canney since 1988. They have three children.').save();

	def LeeU_director = Director.findByDirectorName('Lee Unkrich') ?: new Director(directorName:'Lee Unkrich', directorAge:'46', notes:'Lee Unkrich attended Chagrin Falls High School in Chagrin Falls, Ohio. He was born in 1967 and graduated in 1985. He was a great French student and created a character in his movie, Toy Story 2 (1999) after his high school French teacher. He was featured in the local paper twice for Monsters, Inc. (2001) and for Finding Nemo (2003).').save();

	def BrendaC_director = Director.findByDirectorName('Brenda Chapman') ?: new Director(directorName:'Brenda Chapman', directorAge:'51', notes:'Brenda Chapman is known for her work on Chicken Run (2000), Who Framed Roger Rabbit (1988) and The Real Ghost Busters (1986). She is married to Kevin Lima. They have one child.').save();

	def DanS_director = Director.findByDirectorName('Dan Scanlon') ?: new Director(directorName:'Dan Scanlon', directorAge:'37', notes:'Dan Scanlon is a writer and director, known for Monsters University (2013), Cars (2006) and Mater and the Ghostlight (2006).').save();
	
	//def findingNemo_film = Film.findByFilmName('Finding Nemo') ?: new Film (filmName:'Finding Nemo', filmDescription:'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', filmGenre:'Animation, Adventure, Comedy', filmLength:'100 Mins', releaseDate:'2003' filmDirector:'3', filmStudio:'1').save();
	
	//def toyStory_film = Film.findByFilmName('Toy Story') ?: new Film (filmName:'Toy Story', filmDescription:'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.', filmGenre:'Animation, Adventure, Comedy', filmLength:'81 Mins', releaseDate:'1995' filmDirector:'1', filmStudio:'1').save();

	//def bugsLife_film = Film.findByFilmName('A Bug's Life') ?: new Film (filmName:'A Bug's Life', filmDescription:'A misfit ant, looking for "warriors" to save his colony from greedy grasshoppers, recruits a group of bugs that turn out to be an inept circus troupe.', filmGenre:'Animation, Adventure, Comedy', filmLength:'95 Mins', releaseDate:'1998' filmDirector:'1', filmStudio:'1').save();

	def toyStory2_film = Film.findByFilmName('Toy Story 2') ?: new Film (filmName:'Toy Story 2', filmDescription:'When Woody is stolen by a toy collector, Buzz and his friends vow to rescue him, but Woody finds the idea of immortality in a museum tempting.', filmGenre:'Animation, Adventure, Comedy', filmLength:'92 Mins', releaseDate:'1999-11-24', filmDirector:'1', filmStudio:'1').save();

	def monstersInc_film = Film.findByFilmName('Monsters, Inc.') ?: new Film (filmName:'Monsters, Inc.', filmDescription:'Monsters generate their citys power by scaring children, but they are terribly afraid themselves of being contaminated by children, so when one enters Monstropolis, top scarer Sulley finds his world disrupted.', filmGenre:'Animation, Adventure, Comedy', filmLength:'92 Mins', releaseDate:'2001-11-02', filmDirector:'2', filmStudio:'1').save();

	def ratatouille_film = Film.findByFilmName('Ratatouille') ?: new Film (filmName:'Ratatouille', filmDescription:'A rat, who can also cook, makes an unusual alliance with a young kitchen worker at a famous restaurant.', filmGenre:'Animation, Adventure, Comedy', filmLength:'111 Mins', releaseDate:'1999-11-24', filmDirector:'4', filmStudio:'1').save();
	
	/* Bootstrapping instructions for films did not work for some reason so not all of the films are added here, this is just an example of the instructions we used but these wouldn't work. */
	
	def woody_filmActor = FilmActor.findByFilmCharacterPlayed('Woody') ?: new FilmActor (filmCharacterPlayed:'Woody', filmActors:'1', actorsFilm:'1', actors_film_id:'1').save();

	def woody2_filmActor = FilmActor.findByFilmCharacterPlayed('Woody(2)') ?: new FilmActor (filmCharacterPlayed:'Woody(2)', filmActors:'2', actorsFilm:'1').save();

	def woody3_filmActor = FilmActor.findByFilmCharacterPlayed('Woody(3)') ?: new FilmActor (filmCharacterPlayed:'Woody(3)', filmActors:'11', actorsFilm:'1').save();
	
	def hopper_filmActor = FilmActor.findByFilmCharacterPlayed('Hopper') ?: new FilmActor (filmCharacterPlayed:'Hopper', filmActors:'4', actorsFilm:'2').save();
	
	def buzz_filmActor = FilmActor.findByFilmCharacterPlayed('Buzz Lightyear') ?: new FilmActor (filmCharacterPlayed:'Buzz Lightyear', filmActors:'1', actorsFilm:'3').save();

	def buzz2_filmActor = FilmActor.findByFilmCharacterPlayed('Buzz Lightyear(2)') ?: new FilmActor (filmCharacterPlayed:'Buzz Lightyear(2)', filmActors:'2', actorsFilm:'3').save();

	def buzz3_filmActor = FilmActor.findByFilmCharacterPlayed('Buzz Lightyear(3)') ?: new FilmActor (filmCharacterPlayed:'Buzz Lightyear(3)', filmActors:'11', actorsFilm:'3').save();

	def mike_filmActor = FilmActor.findByFilmCharacterPlayed('Mike Wazowski') ?: new FilmActor (filmCharacterPlayed:'Mike Wazowski', filmActors:'3', actorsFilm:'4').save();

	def mike2_filmActor = FilmActor.findByFilmCharacterPlayed('Mike Wazowski(2)') ?: new FilmActor (filmCharacterPlayed:'Mike Wazowski(2)', filmActors:'14', actorsFilm:'4').save();	
	
	def mcqueen_filmActor = FilmActor.findByFilmCharacterPlayed('Lightning McQueen') ?: new FilmActor (filmCharacterPlayed:'Lightning McQueen', filmActors:'7', actorsFilm:'5').save();

	def mcqueen2_filmActor = FilmActor.findByFilmCharacterPlayed('Lightning McQueen(2)') ?: new FilmActor (filmCharacterPlayed:'Lightning McQueen(2)', filmActors:'12', actorsFilm:'5').save();

	def dory_filmActor = FilmActor.findByFilmCharacterPlayed('Dory') ?: new FilmActor (filmCharacterPlayed:'Dory', filmActors:'5', actorsFilm:'6').save();

	def sully_filmActor = FilmActor.findByFilmCharacterPlayed('Sulley') ?: new FilmActor (filmCharacterPlayed:'Sulley', filmActors:'3', actorsFilm:'7').save();

	def sully2_filmActor = FilmActor.findByFilmCharacterPlayed('Sulley(2)') ?: new FilmActor (filmCharacterPlayed:'Sulley(2)', filmActors:'14', actorsFilm:'7').save();

	def frozone_filmActor = FilmActor.findByFilmCharacterPlayed('Frozone') ?: new FilmActor (filmCharacterPlayed:'Frozone', filmActors:'6', actorsFilm:'8').save();

	def finn_filmActor = FilmActor.findByFilmCharacterPlayed('Finn McMissile') ?: new FilmActor (filmCharacterPlayed:'Finn McMissile', filmActors:'12', actorsFilm:'9').save();

	def fergus_filmActor = FilmActor.findByFilmCharacterPlayed('Fergus') ?: new FilmActor (filmCharacterPlayed:'Fergus', filmActors:'13', actorsFilm:'10').save();

	def TomH_actor = Actor.findByActorName('Tom Hanks') ?: new Actor (actorName:'Tom Hanks', actorAge:'57', actorBio:'Thomas Jeffrey Hanks was born in Concord, California, to Janet Marylyn (Frager), a hospital worker, and Amos Mefford Hanks, an itinerant cook. His father had English, and some German, ancestry, while his mothers family, originally surnamed "Fraga", was entirely Portuguese.').save();

	def KevinS_actor = Actor.findByActorName('Kevin Spacey') ?: new Actor (actorName:'Kevin Spacey', actorAge:'54', actorBio:'As enigmatic as he is talented, Kevin Spacey has always kept the details of his private life closely guarded. As he explained in a 1998 interview with the London Evening Standard, "the less you know about me, the easier it is to convince you that I am that character on screen."').save();

	def TimA_actor = Actor.findByActorName('Tim Allen') ?: new Actor (actorName:'Tim Allen', actorAge:'60', actorBio:'Timothy Allen Dick was born on June 13, 1953, in Denver, Colorado, USA. His father was Gerald Dick, a real-estate salesman who was killed in a collision with a drunk driver while driving his family home from a University of Colorado football game when Tim was 11-years-old.').save();

	def BillyCy_actor = Actor.findByActorName('Billy Crystal') ?: new Actor (actorName:'Billy Crystal', actorAge:'66', actorBio:'Billy Crystal was born on March 14, 1948 in New York. He was the youngest of three sons born to Jack and Helen Crystal. His father was a well-known concert promoter who co-founded Commodore Records and his mother was a homemaker.').save();

	def OwenW_actor = Actor.findByActorName('Owen Wilson') ?: new Actor (actorName:'Owen Wilson', actorAge:'45', actorBio:'Self-proclaimed troublemaker Owen Wilson grew up in Texas with his mother, Laura, a photographer; his father, an ad exec; and his brothers, Andrew Wilson (the eldest) and Luke Wilson (the youngest). ').save();
	
	def EllenD_actor = Actor.findByActorName('Ellen DeGeneres') ?: new Actor (actorName:'Ellen DeGeneres', actorAge:'56', actorBio:'Emmy-winning talk-show host Ellen DeGeneres was born in Metairie, Louisiana, a suburb of New Orleans. Her father, insurance salesman Elliot De Generes and her mother, a real-estate agent, were divorced when she was 16 years old.').save();
	
	def JohnG_actor = Actor.findByActorName('John Goodman') ?: new Actor (actorName:'John Goodman', actorAge:'61', actorBio:'John Stephen Goodman is a U.S. film, television, and stage actor. He was born in St. Louis, Missouri, to Virginia Roos (Loosmore), a waitress and saleswoman, and Leslie Francis Goodman, a postal worker who died when John was a small child. ').save();

	def SamuelJ_actor = Actor.findByActorName('Samuel L. Jackson') ?: new Actor (actorName:'Samuel L. Jackson', actorAge:'65', actorBio:'Samuel L. Jackson usually played bad guys and drug addicts before becoming an action hero, as the character Mitch Henessey, in The Long Kiss Goodnight (1996) and in Die Hard: With a Vengeance (1995). From character player to leading man. His performance in Pulp Fiction (1994) gave him an Oscar nomination for his character Jules Winnfield. ').save();

	def MichaelC_actor = Actor.findByActorName('Michael Caine') ?: new Actor (actorName:'Michael Caine', actorAge:'81', actorBio:'Born Maurice Micklewhite in London, Michael Caine was the son of a fish-market porter and a charlady. He left school at 15 and took a series of working-class jobs before joining the British army and serving in Korea during the Korean War, where he saw combat.').save();

	def BillyCo_actor = Actor.findByActorName('Billy Connolly') ?: new Actor (actorName:'Billy Connolly', actorAge:'71', actorBio:'Billy Connolly was born and raised in Glasgow, Scotland. He left school to work in the shipyards becoming a welder and joined the Territorial Army (in the parachute regiment) at around the same time.').save();

	def kurt_user = User.findByUsername('Klivie') ?: new User (username:'Klivie', userPassword:'pixar', userEmail:'klivie@gmail.co.uk', userAge:'20', userBio:'An American Idiot', favouriteFilm:'Inception').save();

	def matthew_user = User.findByUsername('KingWhitts') ?: new User (username:'KingWhitts', userPassword:'lotr', userEmail:'kingwhitts@gmail.co.uk', userAge:'21', userBio:'I Want To Live Forever', favouriteFilm:'Lord Of The Rings').save();

	def jamie_user = User.findByUsername('jamieshortland') ?: new User (username:'jamieshortland', userPassword:'jamie', userEmail:'jamieshort@gmail.co.uk', userAge:'21', userBio:'Pour Some Sugar On Me', favouriteFilm:'The Crow').save();

	def josh_user = User.findByUsername('Slater2k') ?: new User (username:'Slater2k', userPassword:'nannan', userEmail:'joshuaslater@gmail.co.uk', userAge:'23', userBio:'I Whip My Hair Back And Forth', favouriteFilm:'Magic Mike').save();	

    }
    def destroy = {
    }
}
