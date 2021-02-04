class PlayersController < ApplicationController 

    def show 
        player = Player.find(params[:id])
        render json: player
    end 

    def index    
     players = Player.all.order(:id)
     render json: players
    end 

end 