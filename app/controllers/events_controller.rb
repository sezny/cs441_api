class EventsController < ApplicationController
    
    before_action :event_params, only: [:create]
    before_action :authenticate_user!, :except => [:search]
    respond_to :json

    def create
      @event = Event.new(:title => params[:event][:title],
                 :description => params[:event][:description])
      @event.save
   #   current_user.events << @event
   #   Event.reindex
      render json: @event.to_json
    end

    def search
  #      render json: params[:q].to_s.length > 0 ? Event.search(params[:q]) : Event.all
    end

    private

    def event_params 
      params.require(:event).permit(:title, :description)
    end
end