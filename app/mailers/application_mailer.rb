class ApplicationMailer < ActionMailer::Base
  default from: "shopapp66@gmail.com"
  layout 'mailer'
  def welcome(user)
    @appname = "bike shop"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end
end
