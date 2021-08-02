Rails.application.routes.draw do
  devise_for :users
  get 'manuals/index'
  root to: "manuals#index"
  resources :manuals
end
