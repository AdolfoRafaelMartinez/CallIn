ActionController::Routing::Routes.draw do |map|
  map.search '/accounts/show', :controller => 'accounts', :action => 'show' 
  map.resources :accounts, :has_many => :xactions 
  map.root :controller => "accounts", :action => "search"
  map.resources :t1s
  map.resources :billtimes
  map.resources :xactions
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
