module ApplicationHelper

  def basket_total
    Product.where(id: basket.to_a).sum(:price)
  end

   def basket
    session[:basket] ||= Set.new
  end

  def total
    price=Product.find(session[:basket].to_a).collect{|product| product.price}.sum
end
end
