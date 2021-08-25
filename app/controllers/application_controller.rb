class ApplicationController < ActionController::Base
  before_action :log_request

  private

  def log_request
    puts 'Ha iniciado una petición'
  end
end
