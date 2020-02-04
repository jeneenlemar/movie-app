class Api::MovieGenresController < ApplicationController

  def create
    moviegenre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
 )

    if moviegenre.save
      render json: { message: "Item created successfully" }, status: :created
    else
      render json: { errors: moviegenre.errors.full_messages }, status: :bad_request
    end
    
  end

end
