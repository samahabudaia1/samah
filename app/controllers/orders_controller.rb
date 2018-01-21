class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.includes(:product, :user).where(user_id: current_user.id).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new;
  end

  def create;
    @product = Product.find(params[:product_id])
    @order = @product.orders.build(product: @product)
    @order.total = @product.price_in_cents
    if @order.save
      redirect_to order_path(@order)
      flash[:notice] = "Order made successfully!"
    else
      flash[:error] = "Something went wrong!"
    end
  end

  def destroy;
  end

  private
  def order_params
    params.require(:order).permit(:user_id, :total)
  end
end