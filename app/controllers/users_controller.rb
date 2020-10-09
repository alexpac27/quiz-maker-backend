class UsersController < ApplicationController

     def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id:params[:id])
        render json: @user, include: :quizzes
    end

    def create
        user = User.create!(user_item_params)
        render json: user
    end

    private

    def user_item_params
        params.require(:user).permit(:username, :password)
    end
end
