class TeamsController < ApplicationController


    def show
        team = Team.find(params[:id])
        render json: team 
    end 

    def index 
        team = Team.all 
        render json: team
    end 

    def new
        team = Team.new
    end

    def create
        team = Team.create!(team_params)
        render json: team
    end     

    def destroy 
        team = Team.find(params[:id])
        team.destroy
        render json: team
    end


    private

    def team_params
        params.permit(:user_id, :name)
    end 


end 