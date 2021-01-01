class ContactForm < ActionMailer::Base


  default from: 'notifications@example.com'

  def contact_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'You have a message from a user')
  end
end


