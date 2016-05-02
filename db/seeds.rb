# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Player.create(name: "Mike")
Player.create(name: "Pol")
Player.create(name: "Paul")
Player.create(name: "Tim")
Player.create(name: "Sam")

Tournament.create(name: "Fifa")
Tournament.create(name: "Pro")
Tournament.create(name: "Tekken")

Registration.create(player_id: 1, tournament_id: 1)
Registration.create(player_id: 1, tournament_id: 2)
Registration.create(player_id: 1, tournament_id: 3)
Registration.create(player_id: 2, tournament_id: 1)
Registration.create(player_id: 2, tournament_id: 2)
Registration.create(player_id: 2, tournament_id: 3)
Registration.create(player_id: 3, tournament_id: 1)
Registration.create(player_id: 3, tournament_id: 2)
Registration.create(player_id: 4, tournament_id: 2)
Registration.create(player_id: 4, tournament_id: 3)
