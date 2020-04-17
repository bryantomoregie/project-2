class ApplicationController < ActionController::Base

  skip_before_action(:verify_authenticity_token)
  before_action(:check_login)
  skip_before_action(:check_login, only:[:homepage, :about])

  def homepage
<<<<<<< HEAD
  
=======

>>>>>>> 1bcd4ce3105312450238953d6b1d6c890e91cb1a
  end

  def about
  end

  def check_login
    if (session[:user_id] == nil)
      redirect_to "/users/login"
    else
      @user = User.find(session[:user_id])
    end
  end






  
end
