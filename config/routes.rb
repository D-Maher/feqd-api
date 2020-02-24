Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "api/cards#index"

  namespace :admin do
    root "rules#index"

    resources :cards
    resources :decks
    resources :card_memberships
    resources :rules
  end

  namespace :api do
    resources :cards
    resources :decks
  end
end
