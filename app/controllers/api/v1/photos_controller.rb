class Api::V1::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos
  end

  def show
    @photo = Photo.find(params[:id])
    render json: @photo
  end

  def update
    @photo = Photo.find(params[:id]);
    @photo.update(check_params)
    if @photo.valid?
      render json: @photo
    else
      render json: {errors: @photo.errors.full_messages}
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    render json: {status: 'SUCCESS', message: 'Deleted Photo', data: @photo}, status: :ok
  end

  private

  def check_params
    params.permit(:id, :title, :photo_url_string)
  end
end
