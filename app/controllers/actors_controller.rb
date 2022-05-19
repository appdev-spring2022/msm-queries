class ActorsController < ApplicationController
  def lists
    @list_of_actors = Actor.all
    render({:template => "actors_template/lists.html.erb"})
  end

  def actor_details
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({:id => the_id}).at(0)
    @filmography = Movie.where(:id => the_id)
    render({:template => "actors_template/actor_details.html.erb"})
  end

end
