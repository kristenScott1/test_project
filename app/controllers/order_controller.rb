class OrderController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

  # GET /cart
  def index
    @orders = Order.all
    render json: @orders
  end

# DELETE /cart
def destroy
  @cart = Cart.find(params[:id])
  @cart.discard
  #redirect_to manage_vendors_path, notice: "Cart was successfully deleted."
end

end
