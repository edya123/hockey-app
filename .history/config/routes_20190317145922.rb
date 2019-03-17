Rails.application.routes.draw do
    get '/teams', to: 'teams#index'
    resources :teams
    get '/players', to: 'players#index'
    resources :players
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
