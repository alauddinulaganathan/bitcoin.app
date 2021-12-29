class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:contact]

  def index
    puts('index')
  end

  def contact
    puts('contact method')
  end
end
