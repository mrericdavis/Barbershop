Rails.application.routes.draw do
  get "/appointments" => "appointments#index"
  get "/appointments/new" => "appointments#new"
  post "/appointments" => "appointments#create"
  get "/appointments/:id" => "appointments#show"


  get "/" => "barbers#index"
  get "/barbers" => "barbers#index"
  get "/barbers/new" => "barbers#new"
  post "/barbers" => "barbers#create"
  get "/barbers/:id" => "barbers#show"
  get "/barbers/:id/edit" => "barbers#edit"
  patch "/barbers/:id" => "barbers#update"
  delete "/barbers/:id" => "barbers#destroy"

  get "/calendar" => "barbers#calendar"
  get "/haircut" => "barbers#haircut"

  get "/contact" => "barbers#contact"
  get "/calendar" => "barbers#calendar"
  get "/calendar" => "barbers#calendar"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
