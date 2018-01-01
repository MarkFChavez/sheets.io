Rails.application.routes.draw do

  get "/signin" => "sessions#new", as: :signin
  get "/signup" => "registrations#new", as: :signup

end
