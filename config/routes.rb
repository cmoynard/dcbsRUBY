Rails.application.routes.draw do
  root to: "savforms#home"

  get "/accadmin", to: "fournis#accueil"

  get "/email", to: "mails#index"

  get "/envoiemail", to: "mails#envoie"

  resources :fournis

  resources :savforms
  
end
