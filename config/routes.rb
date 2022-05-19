Rails.application.routes.draw do
  get("/movies", {:controller => "movies", :action => "listing"})
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })
  get("/actors", {:controller => "actors", :action => "lists"})
  get("/actors/:an_id", { :controller => "actors", :action => "actor_details" })
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/eldest", {:controller => "directors", :action => "wisest"})
  get("/directors/youngest", {:controller => "directors", :action => "newest"})
  get("/", {:controller => "application", :action => "homepage"})
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
end
