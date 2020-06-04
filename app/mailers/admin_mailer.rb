class AdminMailer < ApplicationMailer
  default from: 'projet_chaton@yopmail.com'

  def order_email(user)
    @user = user
    @url  = 'http://monsite.fr/login'
    Admin.all do |x| 
      mail(to: x.email, subject: 'Commande passée !')
    end
  end
end
