Rails.application.routes.draw do
  root "factions#index"
  
  resources :factions do
    resources :npcs
    resources :artifacts
    resources :locations
  end

  get :faction_export, to: 'factions#export', as: :faction_export

  resources :players
end
