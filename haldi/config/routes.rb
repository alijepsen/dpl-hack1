Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants do
    resources :orders
  end
  resources :orders do
    resources :deliveries
  end

end
