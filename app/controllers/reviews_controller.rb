class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end

    def create
    
    end

    def show
        reviews = Review.all.select{|review| review.reservation.property.id == params[:id].to_i}
        
        reviews = reviews.map{|review| User.find(review.user_id)}
        render json: reviews

        
    end


end
