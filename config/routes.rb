Rails.application.routes.draw do
  root 'home#index'
  get 'me', to: 'home#me'
  get 'search_books', to: 'books#search'
  resources :books, only: [:show]
  devise_for :users
end
