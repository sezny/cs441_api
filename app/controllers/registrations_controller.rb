class RegistrationsController < Devise::RegistrationsController
    
    before_action :sign_up_params, only: [:new, :create]

    def new
      super
      @user = User.new(:email => params[:user][:email],
                 :password => params[:user][:password],
                 :password_confirmation => params[:user][:password])
      @user.save
    end
  
    def create
      # add custom create logic here
    end
  
    def update
      super
    end

    private
    def sign_up_params 
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)   
    end
end