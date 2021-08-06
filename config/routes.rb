Rails.application.routes.draw do
  get 'manuals/index'
  root to: "manuals#index"
end
