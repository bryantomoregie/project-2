class UsersController < ApplicationController


    def new 
        @user = User.new
    end 

    def create
        @user = User.create({
            name: params[:name],
            user_name: params[:user_name],
            password: params[:password]
        })

        redirect_to "/homepage"
    end

    def show 
        @user = User.find(params[:id])
       
    end 


    

end