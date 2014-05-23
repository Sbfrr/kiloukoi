class UserMailer < ActionMailer::Base
  default from: "contact@fizzer.fr"

  def welcome_email(user)
    @user = user
    @url  = 'http://kiloukoi.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to Kiloukoi')
  end

end
