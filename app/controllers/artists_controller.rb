class ArtistsController < ApplicationController

  def index
    @artist = Artist.all 
  end
  
  def create 
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def show
    @artist = Artist.find_by(params[:id])
  end

  def new
    @artist = Artist.new
  end
  
###
  private
    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

  
end

