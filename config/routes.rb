Rails.application.routes.draw do
  
  get("/", { :controller => "calculations", :action => "new_square"})

  get("/square/new", { :controller => "calculations", :action => "new_square"})
  
  get("/square/results", { :controller => "calculations", :action => "do_square"})

  get("/square_root/new", { :controller => "calculations", :action => "new_square_root"})

  get("square_root/results", { :controller => "calculations", :action => "do_square_root"})

  get("/payment/new", { :controller => "calculations", :action => "new_payment"})

  get("/payment/results", { :controller => "calculations", :action => "do_payment"})

  get("/random/new", { :controller => "calculations", :action => "new_random"})

  get("/random/results", { :controller => "calculations", :action => "do_random"})
end
