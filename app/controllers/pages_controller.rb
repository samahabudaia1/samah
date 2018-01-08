class PagesController < ApplicationController

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail( 
      from: @email,to: 'shopapp66@gmail.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def index
  end

  def landing_page
    @products = Product.limit(4)
  end

end