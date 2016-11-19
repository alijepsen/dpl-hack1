Rails.application.routes.draw do

  root 'portals#index'

  resources :portals
end
