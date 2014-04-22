MPSPortal::Application.routes.draw do
  get "static_pages/home"

  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#fail'


  match "signout", to: "sessions#destroy", as: 'signout'
  root :to => 'static_pages#home'

end
