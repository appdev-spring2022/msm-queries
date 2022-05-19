class MoviesController < ApplicationController
  def listing
    @list_of_movies = Movie.all
    render({:template => "movies_template/listing.html.erb"})
  end
end
