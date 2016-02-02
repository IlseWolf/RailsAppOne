class UserMailer < ApplicationMailer
	  default from: "from@owlsRus.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'i.e.m.wolf@gmail.com.com',
        :subject => "A new contact form message from #{name}")
  end

end
