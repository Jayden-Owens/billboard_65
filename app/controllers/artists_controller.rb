class ArtistsController < ApplicationController
before_action :set_artist, only: [:show, :destroy]

  def index
    @artists = Artist.all 
    render component: "Artists", props: { artists: @artists }
  end

  def show
    render component: "Artist", props: { artist: @artist}
  end

  def new
    @artist = Artist.new
    render component: "ArtistNew", props: { artist: @artist}
  end

  def create
    @artist = artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new 
     end
  end
  
  def destroy
    @artist.destroy
    redirect_to artist_path
  end

  private 
    def set_artist
      @artist = artist.find(params{:id})
    end

    def artist_params
      params.require(:artist).permit(:rank, :song)
    end
end
