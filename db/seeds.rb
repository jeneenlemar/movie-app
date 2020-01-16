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
require 'ffaker'

actor = (FFaker::Name.first_name_male, FFaker::Name.last_name)

actor.save

      #=> "Christophe Bartell"
# FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"
