Rails.application.routes.draw do
  # get 'posts/index'
  # get "/" => "post#index"
  resources :posts
  root "posts#index"
  get "/" => "post#new"

  get "/" => "post#create"

  get "/" => "post#show"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
