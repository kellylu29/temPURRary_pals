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
    user = User.find(params[:id])
    @pets = user.pets
  end

  def set_pet_reservation
    user = User.find(params[:id])
    @reservations = user.reservations
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :avatar)
  end
end
