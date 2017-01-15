class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_admin_timezone
    Time.zone = 'Central Time (US & Canada)'
  end

end
