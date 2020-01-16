class Api::ActorsController < ApplicationController

  def first_actor_method
    @actor = Actor.first
    render "actor.json.jb"
  end
end
