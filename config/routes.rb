Rails.application.routes.draw do
  resources :cards, except: [:new, :edit]
  root "cards#index"
end
