 class MoviesController < ApplicationController
   def index
      @movie = Movie.all.order('created_at DESC')
    end

    def new
      @movie = Movie.new
    end

    def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      redirect_to root_path
    end
 end