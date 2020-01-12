Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/lost_pets" => "lost_pets#index"
    post "/lost_pets" => "lost_pets#create"
    get "/lost_pets/:id" => "lost_pets#show"

    get "/found_pets" => "found_pets#index"
    post "/found_pets" => "found_pets#create"
    get "/found_pets/:id" => "found_pets#show"

    get "/message_bodies" => "message_bodies#index"
    post "/message_bodies" => "message_bodies#create"
    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: "public/index.html")]] }
  end
end
