class EventsController < ApplicationController
    
    before_action :event_params, only: [:create]
    before_action :authenticate_user!, :except => [:list]
    respond_to :json

    def create
      @event = Event.new(:title => params[:event][:title],
                 :description => params[:event][:description])
      @event.save
      current_user.events << @event
      render json: @event.to_json
    end

    def list
        render json: Event.search(params[:q])
    end

    private

    def event_params 
      params.require(:event).permit(:title, :description)
    end
end