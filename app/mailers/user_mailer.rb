
class UserMailer < ApplicationMailer
  default from: "shopapp66@gmail.com"


  def contact_form(email, name, message)
  @message = message
    mail(  to: 'shopapp66@gmail.com',
         subject: "A new contact form message from #{name}",
    body: "A new contact form message from #{message}")

 
  end


  def welcome(user)
  @appname = "Bike Shop"
  mail(to: user.email,
       subject: "Welcome to #{@appname}!")
end 

end