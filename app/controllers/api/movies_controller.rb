class Api::MoviesController < ApplicationController

  def all_movies_method
    @movies = Movie.all
    render "all_movies.json.jb"
  end


  def first_movie_method
    @movie = Movie.first
    render "first_movie.json.jb"
    
  end


end
