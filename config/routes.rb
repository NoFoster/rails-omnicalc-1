Rails.application.routes.draw do
  
  ##get("/", { :controller => "calculations", :action => "homepage"})

  get("/square/new", { :controller => "calculations", :action => "new_square"})
  
  get("/square/results", { :controller => "calculations", :action => "do_square"})

  get("/square_root/new", { :controller => "calculations", :action => "new_square_root"})
end
