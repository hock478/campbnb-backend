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

    def create
        # user = User.new(users_params)
        user = User.create(users_params)

        if user.valid?
            user.save
            payload = {user_id: user.id}
            token = encode(payload)
            new_hash = {}
            
            new_hash["user_data"] = user
            new_hash["token"] = token
            render json: new_hash
        else
            er = {}
            er["error_message"] = user.errors
            render json: er
        end
        
    end


    private

    def users_params
        params.require(:user).permit(:fullname, :username, :bio, :image_url, :password, :password_confirmation)
    end



end
