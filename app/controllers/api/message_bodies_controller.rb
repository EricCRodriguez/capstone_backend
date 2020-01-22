class Api::MessageBodiesController < ApplicationController
  def index
    @message = MessageBody.all
    render "index.json.jb"
  end

  def create
    @message = MessageBody.new(
      sender_id: current_user.id,
      body: params[:body],
      picture: params[:picture],
      receiver_id: params[:receiver_id],
    )
    if @message.save
      render "show.json.jb"
    else
      render json: { errors: @message.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @message = MessageBody.find_by(id: params[:id])
    render "show.json.jb"
  end
end
