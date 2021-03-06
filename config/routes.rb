Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do # /api/users   
    resources :sessions
    resources :users 
    resources :maps 
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
    get '/logged_in' => 'sessions#is_logged_in?'
  end
end
