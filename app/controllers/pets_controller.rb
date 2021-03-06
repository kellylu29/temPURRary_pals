class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all

  end

  def show
    @user = User.find_by_id(params[:id])
    @reservations = @pet.reservations.sort_by &:date
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def create
    @pet = current_user.pets.new(pet_params)

    if @pet.save
      flash[:notice] = "Pet was successfully created."
      redirect_to @pet
    else
      flash[:danger] = @pet.errors
      render :new
    end
  end

  def update
    if @pet.update(pet_params)
      flash[:notice] = "Pet was successfully updated."
      redirect_to @pet
    else
      flash[:danger] = @pet.errors
      render :edit
    end
  end

  def destroy
    @pet.destroy
    flash[:notice] = "Pet was successfully updated."
    redirect_to pets_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :description, :city, :state, :price, :avatar, :user_id, :reservation_id, :reservation_date)
    end
end
