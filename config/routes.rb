Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cards#index"
  namespace :admin do
    resources :cards
    resources :decks
  end

  resources :cards
  resources :decks
end
