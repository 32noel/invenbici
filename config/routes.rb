Rails.application.routes.draw do
  resources :colors
  resources :brands

  resources :partes do
    resources :colors, only: [:index, :new, :create]
    resources :brands, only: [:index, :new, :create]
  end

  root 'partes#index'
end
