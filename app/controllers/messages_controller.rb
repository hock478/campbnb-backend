class MessagesController < ApplicationController

    def index
        messages = Message.all
        render json: messages
    end

    def show
        messages = Message.where(community_id: params[:id])
        render json: messages.as_json(:include => [:user])
    end

    def create
        message = Message.create(community_id: params[:community_id], content: params[:content], user_id: params[:user_id])
        render json: message.as_json(:include => [:user])
    end


end
