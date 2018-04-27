class OrdersController < ApplicationController

  def index
    @movies = Movie.all.order('created_at ASC')
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(secure_params)
    current_user.orders << @order


    if @order.save
      redirect_to @order
    else
      @errors = ["Your password/email combination are incorrect."]
      render 'new'
    end
  end

  def destroy
      @order = Order.find(params[:id])
      @order.destroy
      redirect_to root_path
    end

  private
  def secure_params
    params.require(:order).permit(:cx_first_name, :cx_last_name, :cc_number, :exp_date)
  end
end