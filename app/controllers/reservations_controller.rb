class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservation = current_user.reservations.all
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

  end

  def destroy
    @reservation.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def reservation_params
    params.require(:reservation).permit(:month, :day, :year, :user_id, :pet_id)
  end
end
