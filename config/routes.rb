Rails.application.routes.draw do

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"

  get "/signup" => "registrations#new"
  post "/signup" => "registrations#create"

end
