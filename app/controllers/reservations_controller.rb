class ReservationsController < ApplicationController

    def index
        reservations = Reservation.all
        render json: reservations
    end

    def show
        reservations = Reservation.where(user_id: params[:id])
        render json: reservations.as_json(:include => [:property])
    end

    def create
    
    end

    
end
