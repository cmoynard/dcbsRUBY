Rails.application.routes.draw do
  
  devise_for :admins, :skip => [:registrations]

  root to: "savforms#new"

  get "/accadmin", to: "fournis#accueil"

  get "/email", to: "mails#index"

  get "/envoiemail", to: "mails#envoie"

  get "/factload", to: "savforms#download"

  resources :fournis

  resources :savforms
  
end
