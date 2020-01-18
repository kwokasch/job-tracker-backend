class UsersController < ApplicationController
    def index
        @users = User.all

        render json: @users, include: :jobs
    end

    def create
        @user = User.create(user_params)

        render json: @user, status: :created
    end

    def update
        @user = User.find(user_params)
        @user = user.update(user_params)
    end

    def destroy
        @user = User.find_by(user_params)
        @user.destroy
    end

    private 

    def user_params
        params.require(:user).permit(:email, :password_digest, :username)
    end
end
