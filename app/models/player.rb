class Player < ApplicationRecord
    has_many :teams, through: :team_builders
    has_many :team_builders
end
