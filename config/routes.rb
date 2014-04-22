MPSPortal::Application.routes.draw do
  match "auth/:provider/callback", to: "sessions#new"
  match "auth/failure", to: redirect('/')
  match "signout", to: "sessions#destroy", as: 'signout'

end
