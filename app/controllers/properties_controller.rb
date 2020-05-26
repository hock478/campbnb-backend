class PropertiesController < ApplicationController

    def index
        properties = Property.all
        render json: properties.as_json(:include => [:owner, :reviews])
    end

    def show
        property = Property.find(params[:id])
        render json: property.as_json(:include => [:owner, :reviews])
    end
    
end