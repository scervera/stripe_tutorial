Rails.application.routes.draw do
  resources :posts do
    collection do
      get 'myposts'
    end
  end
  get 'pages/index'
  get 'pages/admin'
  get 'pages/manager'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # resources :users do
  #   resources :posts
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#index"

  
end
