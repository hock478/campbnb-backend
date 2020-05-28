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
        reservation = Reservation.create(reservation_params)
        render json: property, include: [:user, :property]
    end 



    def update
        reservation = Reservation.find(params[:id])
        reservation.update(reservation_params)
        render json: reservation, include: [:user, :property] 
    end 



    def destroy
        reservation = Reservation.find_by(id: params[:id])
        reservation.destroy
        render json: reservation 
    end 

    private

    def reservation_params
        params.require(:reservation).permit(:user_id, :property_id, :start_date, :end_date)
    end

    
end
