Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"
  resources :characters
  resources :dungeons, only: [ :index, :show ] do
      resources :rankings, only: [ :new, :create ]
  end
  resources :rankings, only: [ :edit, :update, :destroy ]
end