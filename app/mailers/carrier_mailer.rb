class CarrierMailer < ActionMailer::Base
  default from: "anju.ideology@gmail.com"
  def carrier_email(carrier)
    @carrier = carrier
    @url  = 'http://example.com/email'
    mail(to: "anju.ideology@gmail.com", subject: 'Resume')
  end
end
