Rails.application.routes.draw do

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  delete "/signout" => "sessions#destroy"

  get "/signup" => "registrations#new"
  post "/signup" => "registrations#create"


  resource :dashboard, only: [:show], constraints: AuthenticatedConstraint.new
  resources :note_categories, only: [:show, :new, :create], constraints: AuthenticatedConstraint.new

end
