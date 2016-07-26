class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
      @artist = Artist.new(artist_params)
      @artist.save
      redirect_to artist_path(@artist)
end


  def show
    @artist = Artist.find(params[:id])
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :description, :address1, :address2, :city, :state, :zipcode, :phone, :email, :mobile)
    end

end
