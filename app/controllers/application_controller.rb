class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_logger

  private

  def set_logger
    logger.debug "Subdomain >> #{request.subdomain}"
  end

  def load_subdomain
    @current_subdomain = Domain.find_by!(subdomain: request.subdomain)
  end
end
