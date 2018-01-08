require 'rails_helper'
describe Product do

  before do
    @product = Product.create(name: "bike race", description: "faster", colour: "blue", price: 44)
    @user = User.create(first_name: "samah", last_name: "samah", email: "soso@hotmail.com", password: "test123")
    @product.comments.create(rating: 1, user: @user, body: "nice!")
    @product.comments.create(rating: 3, user: @user, body: "This is a good!")
    @product.comments.create(rating: 5, user: @user, body: "nice")
  end

  it "returns the average rating of the comments" do
    expect(@product.average_rating).to eq 3
  end
end