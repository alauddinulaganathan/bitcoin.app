class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:contact]

  def index; end

  def contact
    contact = Contact.new(
      name: params['name'], email: params['email'],
      phone: params['phone'], message: params['message']
    )
    ContactMailer.with(contact: contact).contact_email.deliver_now
    redirect_to root_path
  end

  def process_input(params)
    if params['phone'].blank? && params['name'].blank? &&
       params['message'].blank? && !params['email'].blank?
      unless params['email'].include?('@')
        params['phone'] = params['email']
        params['email'] = ''
      end
    end
    params['message'] = '' if params['message'].blank?
  end

  def buy_cotton
    process_input(params)
    contact = Contact.new(
      name: params['name'], email: params['email'],
      phone: params['phone'], message: params['message']
    )
    ContactMailer.with(contact: contact).contact_email.deliver_now
    redirect_to root_path
  end

  def sell_cotton
    process_input(params)
    contact = Contact.new(
      name: params['name'], email: params['email'],
      phone: params['phone'], message: params['message']
    )
    ContactMailer.with(contact: contact).contact_email.deliver_now
    redirect_to root_path
  end
end
