class AlbumsController < ApplicationController

  def index
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
    else
    end

  end

  def show
    @album = Album.find_by(id: params[:id])
  end
  private

  def album_params
    params.require(:album).permit(:title, :description, :vanitiy_url, :password)
  end

end
