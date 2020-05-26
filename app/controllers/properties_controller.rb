class PropertiesController < ApplicationController

    def index
        properties = Property.all
<<<<<<< HEAD
        render json: properties.as_json(:include => [:owner, :reviews])
    end

    def show
        property = Property.find(params[:id])
        render json: property.as_json(:include => [:owner, :reviews])
=======
        render json: properties
>>>>>>> 2c082483813c3741737b4ca26e7ebb3ae64692eb
    end
    
end