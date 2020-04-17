class UsersController < ApplicationController

    skip_before_action(:check_login, only:[:view_login, :handle_login, :new, :create, :index, :show])
    
    def new 
        @user = User.new
        @error_messages = flash[:error_messages]
    end 

    def index
        @users = User.all
    end

    def show 
        @user = User.find(params[:id])
    end 


    def view_login
        @login_errors = flash[:errors]
        render(:login)
    end

    def handle_login
        
        user = User.find_by({user_name: params[:user_name]})
    
        if(user != nil && user.authenticate(params[:password]) )
            session[:user_id] = user.id
            redirect_to "/homepage"
        else  
            
            flash[:errors] = ["invalid log-in"]
             redirect_to"/users/login"
        end
    
    end

    def handle_logout

        user = User.find(session[:user_id]) #select current user
        session[:user_id] = nil         #set id to nill aka logout
        redirect_to("/homepage")        #redirect to homepage

    end



    def destroy
        if session[:user_id] != params[:id].to_i
            redirect_to"/users/login"
        else 
            @user = User.find(params[:id])
            @user.destroy
            session[:user_id] = nil 
            redirect_to "/homepage"
        end 
    end 

    def create
        @user = User.create({
            name: params[:user][:name],
            user_name: params[:user][:user_name],
            password: params[:user][:password],
            img_url: params[:user][:img_url]
        })
      
        if(@user.valid?)
            session[:user_id] = @user.id  
            redirect_to "/homepage"
        else
            flash[:error_messages] = @user.errors.full_messages            
            redirect_to "/users/new"
        end
    end
end