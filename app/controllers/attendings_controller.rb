class AttendingsController < ApplicationController
  def index
  end

  def new
    attending = Attending.new
  end

  def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      redirect_to root_path
    end
end