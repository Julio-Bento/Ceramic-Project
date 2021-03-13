class ContactMailer < ApplicationMailer
  default from:'contact@giudiceli.com'

  def contact_email(contact)
    @from = contact.email


    mail(
        to: 'juliobento@yopmail.com',
        subject: "test",
        cc: "test@test.com"
        )
  end
end
