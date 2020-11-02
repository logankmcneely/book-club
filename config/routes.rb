Rails.application.routes.draw do
  root 'home#index'
  get 'me', to: 'home#me'
  get 'search_books', to: 'books#search'
  devise_for :users
end
