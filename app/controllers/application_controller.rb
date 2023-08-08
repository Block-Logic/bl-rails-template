class ApplicationController < ActionController::Base
  before_action :check_if_saw_cookie_notice

  def check_if_saw_cookie_notice
    cookie_notice = "This site uses cookies. See our <a href='/cookie-policy'>Cookie Policy</a> for details."
    flash[:cookie_notice] = cookie_notice.html_safe unless cookies[:saw_cookie_notice]
  end

  def saw_cookie_notice
    cookies[:saw_cookie_notice] = true
    flash.delete(:cookie_notice)
    redirect_back(fallback_location: root_path)
  end
end
