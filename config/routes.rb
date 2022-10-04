Rails.application.routes.draw do
  # 5 RESTful API routes

  # ANXIETY ROUTES
  get "/anxieties" => "anxieties#index"

  post "/anxieties/:id" => "anxieties#create"

  get "/anxieties/:id" => "anxieties#show"

  patch "/anxieties/:id" =>"anxieties#update"

  delete "/anxieties/:id" => "anxieties#delete"

  # USER ROUTES

  get

  post
  
  patch

  delete


  # SESSION ROUTES

  get

  post 

  patch

  delete 

end
