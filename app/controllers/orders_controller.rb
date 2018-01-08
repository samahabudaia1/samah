class OrdersController < ApplicationController
def create


    product = Product.find(params[:product_id])

    basket.add(product.id)

    flash[:success] = "Product added to basket"

    redirect_to product_path(product)

end


def new

@order = Order.new

    basket.each do |item_id|
        @order.order_products.build(product: Product.find(item_id))
    end

end
end