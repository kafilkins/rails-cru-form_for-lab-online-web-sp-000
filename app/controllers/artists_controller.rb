class ArtistsController < ApplicationController

    def show    
        @artists = Artist.find(params[:id])
    end

    def new 
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit 
        @artists = Artist.find(params[:id])
    end

    def update 
        @artist = Artist.find(params[:id])
        @artist.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end


    private

        def artist_params 
            params.require(:artist).permit(:name, :bio)
        end
end