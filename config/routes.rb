Rails.application.routes.draw do
  get '/welcome/:first_name', to: 'dynamic#welcome_user'
  get 'welcome', to: 'dynamic#welcome_user'
  get '/team', to:'static#team'
  get '/contact', to: 'static#contact'
  root 'static#home'
  get '/gossip/:gossip_number', to: 'dynamic#gossip'
  get '/author/:author_info', to: 'dynamic#author'
  get '/create_gossip', to: 'static#create_gossip'

  post '/gossips/new', to: 'static#store_gossip'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end