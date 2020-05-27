class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def profile
        token = request.headers["Authenticate"]
        user = User.find(decode(token)["user_id"])
        render json: user
    end


end
