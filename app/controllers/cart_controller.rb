class CartController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @cart = Cart.all
    render json: @cart    
  end

end