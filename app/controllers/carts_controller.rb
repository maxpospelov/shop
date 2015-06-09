class CartsController < ApplicationController
  include CurrentCart

  before_action :set_cart, only: [:show, :edit,:update, :destroy]

  def show
  end

  def create
  end

  def edit
  end

  def new
  end

  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :ok }
    end
  end
end
