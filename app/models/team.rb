class Team < ApplicationRecord
  belongs_to :user
  has_many :team_builders
  has_many :players, through: :team_builders
end
