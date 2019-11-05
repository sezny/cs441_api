class UsersController < ApplicationController
    
    before_action :authenticate_user!, :except => [:me]
    respond_to :json

    def me
        render json: current_user.to_json
    end

end