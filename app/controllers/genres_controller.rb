class GenresController < ApplicationController
    def index
        @genres = Genre.all 
    end    
    
    def show 
        @genres = Genre.find(params[:id])
    end

    def new 
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit 
        @genre = Genre.find(params[:id])
    end

    def update 
        @genre = Genre.find(params[:id])
        @genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

    private

        def genre_params 
            params.require(:genre).permit(:name) 
        end

end