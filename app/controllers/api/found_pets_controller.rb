class Api::FoundPetsController < ApplicationController
  def index
    @found_pets = FoundPet.all
    render "index.json.jb"
  end

  def create
    @found_pet = FoundPet.new(
      user_id: current_user.id,
      address: params[:address],
      breed: params[:breed],
      color: params[:color],
      size: params[:size],
      gender: params[:gender],
      add_info: params[:add_info],
      shelter_info: params[:shelter_info],
    )
    if @found_pet.save
      render "show.json.jb"
    else
      render json: { errors: @found_pet.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @found_pet = FoundPet.find_by(id: params[:id])
    render "show.json.jb"
  end
end
