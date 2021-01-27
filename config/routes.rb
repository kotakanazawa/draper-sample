Rails.application.routes.draw do
  scope :hoge do
    resources :articles, only: :index
  end

  namespace :bar do
    resources :todos, only: :index
  end

  scope module: :baz do
    resources :books, only: :index
  end

  root "users#index"
  resources :users
end
