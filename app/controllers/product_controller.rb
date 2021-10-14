class ProductController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  
  # GET /product
  def index
    products = Product.all
    render json: products.as_json()
  end

  end