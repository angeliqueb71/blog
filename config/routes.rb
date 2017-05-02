Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
   # nest route
  resources :posts do
   resources :comments
 end

# resources
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/login' => "sessions#destroy"
  
  root "posts#index"
end
