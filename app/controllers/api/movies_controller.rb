class Api::MoviesController < ApplicationController



  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id]) 
    render "show.json.jb"
  end

  def create 
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
      )
    @movie.save
    render "show.json.jb"
  end

  def update
    
    @movie = movie.find_by(id: params[:id])
   

  
    @movie.title = params[title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot

    @movie.save

    render "show.json.jb"  
  end

  def destroy

    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Record has been successfully deleted"}
  end

    
  


  
end

  # def all_movies_method
  #   @movies = Movie.all
  #   render "all_movies.json.jb"
  # end


  # def first_movie_method
  #   @movie = Movie.first
  #   render "first_movie.json.jb"
    
  # end


