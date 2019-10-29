class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        @user = User.create(new_email)
        # byebug
        render json: @user.to_json(:except => [:created_at, :updated_at ])
    end

    private

    def new_email
        params.require(:user).permit(:email) 
      end 


end
