Rails.application.routes.draw do
  get "/", to: "site#home"

  get "/contact", to: "site#contact"


  # Project routes
  # --------------
  get "/projects", to: "projects#index"

  get "/projects/new", to: "projects#new"
  post "/projects", to: "projects#create"

  get "/projects/:id", to: "projects#show"


  # TimeEntry routes
  # ----------------
  get "/projects/:project_id/time_entries", to: "time_entries#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
