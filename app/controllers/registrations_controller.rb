class RegistrationsController < Devise::RegistrationsController
  before_action :set_user, only: [:show]
  before_action :set_pet_reservation, only: [:show]
  before_action :set_pet, only: [:show]

  def show

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_pet
    @pets = current_user.pets
  end

  def set_pet_reservation
    @reservations = Reservation.all
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :avatar)
  end
end
