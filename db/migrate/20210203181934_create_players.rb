class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :player_id
      t.integer :fantasy_points
      t.string :position
      t.string :nba_team
      t.integer :minutes_played
      t.integer :field_goal_percentage
      t.integer :rebounds
      t.integer :assists
      t.integer :points

      t.timestamps
    end
  end
end
