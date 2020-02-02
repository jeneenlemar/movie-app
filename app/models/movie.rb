class Movie < ApplicationRecord

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  has_many :actors
  
  validates :title, :plot, presence: true
 

  def genre_names
  genre_names = []

    genres.each do |genre|
      genre_names << genre.name
    end
    genre_names
  end

end
