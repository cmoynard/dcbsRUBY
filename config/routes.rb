Rails.application.routes.draw do
  
  devise_for :admins, :skip => [:registrations]

  root to: "savforms#new"

  get "/accadmin", to: "fournis#accueil"

  get "/email", to: "mails#index"

  post "/envoiemail", to: "mails#envoie"

  resources :fournis

  resources :savforms
  
end
