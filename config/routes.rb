Rails.application.routes.draw do
  resources :publications do
    post 'likes', to: 'publications#likes'
  end



  devise_for :users
  get 'home/index'

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
