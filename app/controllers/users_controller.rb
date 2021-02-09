class UsersController < ApplicationController 


    def show 
        user = User.find(params[:id])
        render json: user
    end 

    def create
        user = User.create(user_params)
        if user.valid?
            render json:  user
        else 
            render json: { error: "user already exists"}
        end
    end


    private 

    def user_params
        params.permit(:username, :password)
    end 


end 