class MoviesController < ApplicationController
  def listing
    @list_of_movies = Movie.all
    render({:template => "movies_template/listing.html.erb"})
  end

  def movie_details
    the_id = params.fetch("an_id")
    @the_movie = Movie.where({:id => the_id}).at(0)
    render({:template => "movies_template/movie_details.html.erb"})
  end
end
