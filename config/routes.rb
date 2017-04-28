Rails.application.routes.draw do
  get 'comments/_comments'

  get 'comments/_form'

  # get 'posts/index'
  # get "/" => "post#index"
  resources :posts
  resources :comments
  root "posts#index"
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
