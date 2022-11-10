Rails.application.routes.draw do
  # 5 RESTful API routes

  # ANXIETY ROUTES
  get "/anxieties" => "anxieties#index"

  get "/anxieties/:id" => "anxieties#show"

  post "/anxieties" => "anxieties#create"

  patch "/anxieties/:id" =>"anxieties#update"

  delete "/anxieties/:id" => "anxieties#destroy"


  # USER ROUTES
  post "/users" => "users#create"

  patch "/users" => "users#update"
  
  # delete "/users" => "users#destroy"




  # SESSION ROUTES
  post "/sessions" => "sessions#create"
  
end
