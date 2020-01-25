class Api::ActorsController < ApplicationController


  def index
    @actors = Actor.all

    # asked to add for sorting actors oldest to youngest.  This does either depending on params passed.

    if params[:sort] == "age" && params[:sort_order] == "asc"  
      @actors = @actors.order(:age)
    else params[:sort] == "age" && params[:sort_order] == "desc"
      @actors = @actors.order(age: :desc)
    end











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
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
      )
    
    if @actor.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    #render same as show to see fixes. Also same find_by
    @actor = Actor.find_by(id: params[:id])
    # remember to account for if something isn't entered for a key for update to have it be equal to the original

  
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age

    if @actor.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end 
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