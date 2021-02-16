class PlayersController < ApplicationController 

    def show 
        player = Player.find(params[:id])
        render json: player
    end 

    def index    
     players = Player.all.order(:id)
     render json: players
    end 

    def destroy
        player = Player.find(params[:id])
        player.delete
        render json: player
    end 

end 