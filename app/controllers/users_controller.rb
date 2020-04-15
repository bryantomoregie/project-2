class UsersController < ApplicationController

    skip_before_action(:check_login, only:[:view_login, :handle_login, :new, :create, :index])
    
    def new 
        @user = User.new
    end 

    def index
        @users = User.all
    end


    def create
        @user = User.create({
            name: params[:user][:name],
            user_name: params[:user][:user_name],
            password: params[:user][:password],
            img_url: params[:user][:img_url]
        })
        
        redirect_to "/homepage"
    end

    def show 
        @user = User.find(params[:id])
       
    end 

    def view_login
        render(:login)
    end

    def handle_login
        
        user = User.find_by({user_name: params[:user_name]})
       
        if (user.authenticate(params[:password]))
            session[:user_id] = user.id
            redirect_to "/homepage"
        elsif 
            
            flash[:errors] = user.errors.full_messages
            redirect_to"/users/login"
        end
       
    end

    



    

end