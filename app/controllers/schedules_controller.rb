class SchedulesController < ApplicationController
    
    before_action :authenticate_user!, :except => [:create_time]
    respond_to :json

end