class Api::LostPetsController < ApplicationController
  def index
    @lost_pets = LostPet.all
    render "index.json.jb"
  end

  def create
    @lost_pet = LostPet.new(
      user_id: current_user.id,
      address: params[:address],
      search_area: params[:search_area],
      breed: params[:breed],
      color: params[:color],
      size: params[:size],
      gender: params[:gender],
      behaviour_type: params[:behaviour_type],
      name: params[:name],
      picture: params[:picture],
    )
    if @lost_pet.save
      render "show.json.jb"
    else
      render json: { errors: @lost_pet.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @lost_pet = LostPet.find_by(id: params[:id])
    render "show.json.jb"
  end
end
