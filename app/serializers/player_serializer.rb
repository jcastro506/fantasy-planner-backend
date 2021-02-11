class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :player_id, :fantasy_points, :position, :nba_team, :minutes_played, :field_goal_percentage, :rebounds, :assists, :points, :team_builders
end
