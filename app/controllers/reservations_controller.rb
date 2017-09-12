class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def edit

  end

  def create
    @pet = Pet.find(params[:id])
    @reservation = @pet.reservations.build(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      flash[:notice] = "Reservation completed."
      redirect_to @reservation
    else
      flash[:danger] = @reservation.errors
      render :new
    end
  end

  def update
    if @reservation.update(reservation_params)
      flash[:notice] = "Reservation was successfully updated."
      redirect_to @reservation
    else
      flash[:notice] = "Reservation was not successfully updated."
      render :edit
    end
  end

  def destroy
    @user = current_user
    @reservation.destroy
    redirect_to current_user
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def reservation_params
    params.require(:reservation).permit(:date, :user_id, :pet_id)
  end
end
