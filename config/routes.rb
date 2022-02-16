Rails.application.routes.draw do
  # resources :restaurants
  resources :restaurants do
    collection do
    end
    resources :reviews, only: [:new, :create]
  end
end
