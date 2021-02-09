class TeamSerializer < ActiveModel::Serializer
    has_many :team_builders
    attributes :id, :user_id, :name, :players

end 