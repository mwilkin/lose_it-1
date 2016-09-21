Rails.application.routes.draw do

  resources :exercises
  devise_for :users, :controllers => { registrations: 'registrations' }

  root "pages#show", page: "home"
end
