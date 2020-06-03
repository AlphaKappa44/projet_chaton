class UserMailer < ApplicationMailer
  default from: 'projet_chaton@yopmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://monsite.fr/login'
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end

  def order_email(user)
    @user = user
    @url  = 'http://monsite.fr/login'
    mail(to: @user.email, subject: 'Merci pour votre commande !')
  end
end
