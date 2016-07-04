Rails.application.routes.draw do
  get "/", to: "site#calculator"

  post "/calculate", to: "site#calculate"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
