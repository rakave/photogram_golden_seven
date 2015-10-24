Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/new", {:controller => "photos", :action => "new"} )
  get("/create_photo", { :controller => "photos", :action => "create_row" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/photos/:id/edit", {:controller => "photos", :action => "edit"})
  get("/update_photo/:id", { :controller => "photos", :action => "update_photo" })
  get("/delete_photo/:id", {:controller => "photos", :action => "delete"})


end
