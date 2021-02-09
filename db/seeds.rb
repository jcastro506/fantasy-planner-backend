# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

api_resp = RestClient.get("https://api.sportsdata.io/v3/nba/projections/json/PlayerSeasonProjectionStats/2021?key=fb6ead25e1fd44ffbfc076696dda1bd6")
data = JSON.parse(api_resp)


User.destroy_all
Team.destroy_all
TeamBuilder.destroy_all
Player.destroy_all
User.reset_pk_sequence
Team.reset_pk_sequence
TeamBuilder.reset_pk_sequence
Player.reset_pk_sequence



puts "Destroying everything"
puts "Seeding everything..."

user = User.create!(
    username: "JoshC", 
    password: 123)


3.times do 
team = Team.create(
    user: user, 
    name: Faker::Book.title)
end 


player = data.each { |player| Player.create(name: player["Name"], player_id: player["PlayerID"], fantasy_points: player["FantasyPoints"], position: player["Position"], nba_team: player["Team"], minutes_played: player["Minutes"], field_goal_percentage: player["FieldGoalsPercentage"], rebounds: player["Rebounds"], assists: player["Assists"], points: player["Points"])}


TeamBuilder.create(team_id: 1, player_id: 3)
TeamBuilder.create(team_id: 1, player_id: 4)
TeamBuilder.create(team_id: 1, player_id: 5)
TeamBuilder.create(team_id: 1, player_id: 6)
TeamBuilder.create(team_id: 1, player_id: 7)

# Team_Builder.create(
#     team_id: 1
#     player: 
# )



# data.each { |player| Player.create(name: player["Name"], team: player["Team"], position: player["Position"], fantasy_points: player["FantasyPoints"])}


