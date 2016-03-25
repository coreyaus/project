class UserMailer < ApplicationMailer
  default from: "corey@codenation.com"

  def contact_form(email, name, message)
  	@message = message
    mail(:from => email,
			:to => 'corey@codenation.com',
			:subject => "A new contact form message from #{name}")
  end
end
