Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do
      get "top", to: "restaurants#top"
    end
    member do
      get "category", to: "restaurants#category"
    end
    member do
      get "phone", to: "restaurants#phone"
    end
    resources :reviews, only: [:new, :create]
  end

    namespace :admin do
    resources :restaurants, only: [:index]
  end


end
