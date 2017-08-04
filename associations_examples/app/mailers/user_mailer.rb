class UserMailer < ApplicationMailer
  default from: 'juan@gomez.com'

  def welcome(user, book)
    @user =  user
    @book = book
    mail(to: @user.email, subject: 'Bienvenido a mi super sitio!')
  end

  def confirm_purchase

  end

end
