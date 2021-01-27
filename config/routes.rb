Rails.application.routes.draw do
  scope :blog do
    resources :articles, only: :index
  end
  root "users#index"
  resources :users
end
