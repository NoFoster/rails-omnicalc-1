Rails.application.routes.draw do
  
  get("/", { :controller => "calculations", :action => "homepage"})

  get("/square/new", { :controller => "calculations", :action => "new_square"})
  
  get("/square", { :controller => "calculations", :action => "do_square"})
end
