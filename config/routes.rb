Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # make route, action and view for index (ALL actors) - done
    # repeat for show (single actor) - done
    # repeat for create (single actor) - done
    # repeat for update (single actor) - done
    # repeat for destroy (single actor) - done



    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"


    


  end


end



#below is old route info from BEFORE REST
#actor routes
    # get "/first_actor_url" => "actors#first_actor_method"

    # #need 3 routes for actor params hw (query, segment body. Will do in that order below HERE)

    # get "/any_actor_url" => "actors#any_actor_method"

    # get "/any_actor_url/:id" => "actors#any_actor_method"

    # post "any_actor_post_url" => "actors#any_actor_method"
   
    
    # # get "/first_actor_url" => "actors#first_actor_method"

    # #movie routes
    # get "/all_movies_url" => "movies#all_movies_method"

    # get "/first_movie_url" => "movies#first_movie_method"