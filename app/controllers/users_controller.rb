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
        user = User.new(username: params[:username] , fullname: params[:fullname] , bio: params[:bio] , image_url: params[:image_url], password_digest: BCrypt::Password.create(params[:password]))

        if user.valid?
            user.save
            payload = {user_id: user.id}
            token = encode(payload)
            new_hash = {}
            new_hash["user_data"] = user
            new_hash["token"] = token
            render json: new_hash
        else
            render json: {
            error_message: user.errors
        }
        end
        
    end


    private

    def users_params
        params.require(:user).permit(:fullname, :username, :bio, :image_url, :password)
    end



end
