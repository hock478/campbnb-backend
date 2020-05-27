class MessagesController < ApplicationController

    def index
        messages = Message.all
        render json: messages
    end

    def show
        messages = Message.where(community_id: params[:id])
        render json: messages.as_json(:include => [:user])
    end


end
