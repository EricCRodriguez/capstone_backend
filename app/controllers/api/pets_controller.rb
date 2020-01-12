class Api::PetsController < ApplicationController
  def user_create
    render "user.json.jb"
  end

  def user_index
    render "user.json.jb"
  end

  def lost_pets_index
    render "lost_pets.json.jb"
  end

  def lost_pets_create
    render "lost_pets.json.jb"
  end

  def found_pets_index
    render "found_pets.json.jb"
  end

  def found_pet_create
    render "found_pets.json.jb"
  end

  def message_index
    render "message_index.json.jb"
  end

  def message_create
    render "message_index.json.jb"
  end
end
