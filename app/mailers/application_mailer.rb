class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def welcome_email
    @user = params[:user]
    @url = 'http://austinow.com/lgoin'
    mail(to: @user.email, subject: 'Welcome to My Awesome website')
  end
end
