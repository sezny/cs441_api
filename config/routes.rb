Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
  
  get  '/events/search',   to: 'events#search'
  post '/events/create', to: 'events#create'

  get '/me', to: 'users#me'
end
