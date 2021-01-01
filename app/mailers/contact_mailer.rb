class ContactMailer < ApplicationMailer

	helper :application
	default from: 'notifications@example.com'

  def contact_email
  	#@contact = Contact.new
    @url = "22222222"
    mail(to: "yes@me.com", subject: 'Welcome to My Awesome Site')
  end
end

