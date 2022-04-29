Rails.application.routes.draw do
  
  devise_for :admins #définition des routes pour les admins avec skip des register sur le site

  root to: "savforms#new" #page de base du site

  get "/accadmin", to: "fournis#accueil" #route pour la page d'accueil de l'admin

  get "/email", to: "mails#index" #route pour la page des mails

  post "/envoiemail", to: "mails#envoie" #route pour la page d'envoie

  resources :fournis #groupes de routes pour les page fournis

  resources :savforms #groupes de routes pour les page savforms
  
end
