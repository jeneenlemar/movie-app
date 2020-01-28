# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# actor = Actor.new(first_name: "Benedict", last_name: "Cumberpatch", known_for: "Sherlock")

# actor.save
# RECORD DONE



# require 'ffaker'

# 3.times do
#   actor = Actor.new(
#   first_name: FFaker::Name.first_name,
#   last_name: FFaker::Name.last_name, 
#   known_for: FFaker::Job.title 
#   )
#   actor.save
# end

      #=> "Christophe Bartell"
# FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"

# my_movie = Movie.new(
#   title: "A Few Good Men",
#   year: 1992,
#   plot: "Military lawyer Lieutenant Daniel Kaffee defends Marines accused of murder. They contend they were acting under orders.. (credit:source-IMDB)"
#   )

# my_movie.save

# my_movie = Movie.new(
#   title: "Rudy",
#   year: 1993,
#   plot: "Rudy has always been told that he was too small to play college football. But he is determined to overcome the odds and fulfill his dream of playing for Notre Dame. (credit:source-IMDB)"
#   )

# my_movie.save

my_movie = Movie.new(
  title: "Herbie",
  year: 1972,
  plot: "car movie",
  director: "somedude",
  english: true
  )

my_movie.save




