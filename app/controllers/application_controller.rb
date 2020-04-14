class ApplicationController < ActionController::Base

  skip_before_action(:verify_authenticity_token)
  before_action(:check_login)
  skip_before_action(:check_login, only:[:homepage])

  def homepage
    
  end

  def check_login
    if (session[:user_id] == nil)
      redirect_to "/users/login"
    end
  end

  
end
