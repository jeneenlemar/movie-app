class Api::ActorsController < ApplicationController


  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    @actor = Actor.find_by(id: params[:id]) # instance variable to hold one actor which calls on the actor model, using the find_by method and pulling the params hash value from the id key
    render "show.json.jb"
  end

  def create #renders same as show because you want to SEE the new item you made! You then need to make NEW instance
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for]
      )
    @actor.save
    render "show.json.jb"
  end

  def update
    #render same as show to see fixes. Also same find_by
    @actor = Actor.find_by(id: params[:id])
    # remember to account for if something isn't entered for a key for update to have it be equal to the original

  
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for

    @actor.save

    render "show.json.jb"  
  end

  def destroy

    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "Record has been successfully deleted"}
  end

    
  


  
end



####old methods from before REST
# def first_actor_method
#     @actor = Actor.first
#     render "actor.json.jb"
#   end

#   def any_actor_method
#     # @any_actor = "test the any_actor instance variable"
#     any_actor = params[:id].to_i
#     @selected_actor = Actor.find_by(id: any_actor)
#     render "any_actor.json.jb"
#   end