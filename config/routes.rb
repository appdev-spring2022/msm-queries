Rails.application.routes.draw do
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/eldest", {:controller => "directors", :action => "wisest"})
  get("/directors/youngest", {:controller => "directors", :action => "newest"})
  get("/", {:controller => "application", :action => "homepage"})
end
