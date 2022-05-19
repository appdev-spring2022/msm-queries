class ActorsController < ApplicationController
  def lists
    @list_of_actors = Actor.all
    render({:template => "actors_template/lists.html.erb"})
  end
end
