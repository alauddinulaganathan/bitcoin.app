class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:contact]

  def index
  end

  def contact
    ContactMailer.with(contact: contact).contact_email.deliver_now
    redirect_to root_path
  end
end
