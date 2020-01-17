Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/first_actor_url" => "actors#first_actor_method"
    get "/all_movies_url" => "movies#all_movies_method"
    get "/first_movie_url" => "movies#first_movie_method"
  end

# namespace :api do
  
# end

end
