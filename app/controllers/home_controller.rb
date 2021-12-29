class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:contact]

  def index
    puts('index')
  end

  def contact
    contact = Contact.new(name: params['name'], email: params['email'], message: params['message'])
    contact.save
    redirect_to root_path
  end
end
