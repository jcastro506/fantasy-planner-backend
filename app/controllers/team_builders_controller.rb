class TeamBuildersController < ApplicationController


    def show
        team_builder = TeamBuilder.find(params[:id])
        render json: team_builder
    end 


    def index 
        team_builder = TeamBuilder.all 
        render json: team_builder
    end 

    def create 
        team_builder = TeamBuilder.create!(team_builder_params)
        render json: team_builder
    end 

    def new 
        team_builder = TeamBuilder.new
    end 

    def update 
        team_builder = TeamBuilder.find(params[:id])
        team_builder.update(team_builder_params)
        render json: team_builder
    end 


    private

    def team_builder_params
        params.permit(:team_id, :player_id)
    end 


end 