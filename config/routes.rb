Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

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