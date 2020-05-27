class CommunitiesController < ApplicationController

    def index
        communities = Community.all
        render json: communities.as_json(:include => [:user])
    end

    def show
        community = Community.find(params[:id])
        render json: community.as_json(:include => [:user])
    end


end
