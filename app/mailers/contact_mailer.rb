class ContactMailer < ApplicationMailer
  default from: 'radiantginningmills@gmail.com'

  def contact_email
    @contact = params[:contact]
    mail(to: 'radiantginningmills@gmail.com',
         subject: "New Enquiry from #{@contact.name}")
  end
end
