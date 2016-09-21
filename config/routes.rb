Rails.application.routes.draw do

  resources :exercises
  resources :foods
  devise_for :users, :controllers => { registrations: 'registrations' }

  root "pages#show", page: "home"
end
