class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  # def welcome_email
  #   @user = params[:user]
  #   @url  = 'http://example.com/login'
  #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  # end
  def send_email order
    @order = order
    mail(to: @order.email, subject: "You order: #{@order.id} confirmed.")
  end

end