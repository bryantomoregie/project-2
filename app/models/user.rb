class User < ApplicationRecord
    has_many :recipes
    has_many :reviews, through: :recipes 
    has_secure_password()

    
    validate(:invalid_password, :invalid_username)
    def invalid_password
       if (self.password != nil && self.password.length < 8 ) 
        self.errors.add(:password, "must be longer than 8 digits")
       end
    end

    def invalid_username
        if(self.user_name.length < 5)
            self.errors.add(:user_name, "must be provided")
        end
    end

    # def inval_login 

    #     if (User.all.include?(params[:user_name])
    #     end
    # end
end

