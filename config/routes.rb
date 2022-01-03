Rails.application.routes.draw do
  get 'countries/index'
  get '' => 'home#index'

  resources :authors
  resources :books
  resources :countries

  get '/check_if_book_title_exists' => 'books#check_if_book_title_exists', as: :check_if_book_title_exists
end
