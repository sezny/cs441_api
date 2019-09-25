Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
  
  get  '/events/list',   to: 'events#list'
  post '/events/create', to: 'events#create'
end
