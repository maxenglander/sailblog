class ApplicationController < ActionController::Base
  before_action :send_headers

  protect_from_forgery

  private

  def send_headers
    response.charset = 'iso-8859-1'
  end
end
