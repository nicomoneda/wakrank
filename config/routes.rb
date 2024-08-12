Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"
  resources :characters
  resources :dungeons, only: [ :index, :show ] do
      resources :rankings, only: [ :new, :create ]
  end
  # resources :rankings, only: [ :edit, :update, :destroy ]
  get "rankings/:id/edit", to: "rankings#edit", as: :edit_ranking
  patch "rankings/:id", to: "rankings#update", as: :ranking
  # TEMPORAIRE #
  delete "rankings/destroy_all", to: "rankings#destroy_all", as: :destroy_all_rankings
  # FIN TEMPORAIRE #
end