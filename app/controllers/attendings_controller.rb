class AttendingsController < ApplicationController
  def index
  end

  def new
    attending = Attendings.new
  end

  def destroy
      @attending = Attendings.find(params[:id])
      @attending.destroy
      redirect_to root_path
    end
end