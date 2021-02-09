class User < ApplicationRecord
    has_many :teams, dependent: :destroy


    def getTeams
        allTeams = User.first.teams.first.players
    end 

    
end
