# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	

Task.create([{ name: "Meeting with Mr Goutay",
				date: "2015-01-01",
				hour: "2000-01-01 02:01:00",
				place: "12 rue d'Alésia",
				description: "Penser à ramener les papiers du projet",
				user_id: "1"
			}])
 
 Task.create([{ name: "Anniversaire Laurine",
				date: "2016-12-01",
				hour: "2000-01-01 12:00:00",
				place: "21 rue Pont de Madame, Merignac",
				description: "Ramener cake et biscuits apéros",
				user_id: "1"
			}])

 Task.create([{ name: "Rendez vous client",
				date: "2015-19-11",
				hour: "2000-01-01 15:30:00",
				place: "La Loupe",
				description: "Envoyer le drive contenant le backlog",
				user_id: "1"
			}])

 Task.create([{ name: "Crémaillère Eva",
				date: "2015-18-12",
				hour: "2000-01-01 21:15:00",
				place: "",
				description: "",
				user_id: "1"
			}])

 Task.create([{ name: "Soirée de Noël",
				date: "2015-22-12",
				hour: "2000-01-01 20:30:00",
				place: "Chez Max",
				description: "Penser à ramener les papiers du projet",
				user_id: "1"
			}])

 Task.create([{ name: "Entretien WCS",
				date: "2016-02-01",
				hour: "2000-01-01 09:00:00",
				place: "Chartres",
				description: "Préparer ppt sur les CMS",
				user_id: "1"
			}])
