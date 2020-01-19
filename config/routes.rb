Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #actor routes
    get "/first_actor_url" => "actors#first_actor_method"

    #need 3 routes for actor params hw (query, segment body. Will do in that order below HERE)

    get "/any_actor_url" => "actors#any_actor_method"

    get "/any_actor_url/:id" => "actors#any_actor_method"

    post "any_actor_post_url" => "actors#any_actor_method"
   
    
    # get "/first_actor_url" => "actors#first_actor_method"

    #movie routes
    get "/all_movies_url" => "movies#all_movies_method"

    get "/first_movie_url" => "movies#first_movie_method"


  end


end
