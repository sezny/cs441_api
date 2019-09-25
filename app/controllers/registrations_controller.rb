class RegistrationsController < Devise::RegistrationsController
    
    before_action :sign_up_params, only: [:new, :create]
    respond_to :json

    def new
     # super
      return render :json => { :errors => "Email already taken" }, :status => 422 if User.find_by_email(params[:user][:email])
      return render :json => { :errors => "Password and confirmation password does not match" }, :status => 422 if params[:user][:password] != params[:user][:password_confirmation]
      @user = User.new(:email => params[:user][:email],
                 :password => params[:user][:password],
                 :password_confirmation => params[:user][:password_confirmation])
      @user.save
      render json: @user.to_json
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
end