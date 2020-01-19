class Api::ActorsController < ApplicationController

  def first_actor_method
    @actor = Actor.first
    render "actor.json.jb"
  end

  def any_actor_method
    # @any_actor = "test the any_actor instance variable"
    any_actor = params[:id].to_i
    @selected_actor = Actor.find_by(id: any_actor)
    render "any_actor.json.jb"
  end
end

