Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/", to: "books#index"
  root "books#index"

  # resources :books, { :only => [ :new, :create ] }
  resources :books, only: [ :new, :create ]
end
