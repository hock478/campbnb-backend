class PropertiesController < ApplicationController

    def index
        properties = Property.all
        render json: properties.as_json(:include => [:owner, :reviews])
    end

    def show
        property = Property.find(params[:id])
        render json: property.as_json(:include => [:owner, :reviews])
    end

    def create
        property = Property.create(property_params)
        render json: property, include: [:owner]
    end 

    def destroy
        property = Property.find_by(id: params[:id])
        property.destroy
        render json: property 
    end 

    private

    def property_params
        params.require(:property).permit(:owner_id, :name, :city, :state, :details, :img_url, :price_per_night)
    end
    
end