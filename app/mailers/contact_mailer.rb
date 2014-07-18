class ContactMailer < ActionMailer::Base
  default from: "anju.ideology@gmail.com"
  def contact_email(contact)
    @contact = contact
    @url  = 'http://example.com/email'
    mail(to: "anju.ideology@gmail.com", subject: 'Feedbacks')
  end
end
