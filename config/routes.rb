Rails.application.routes.draw do
  get 'countries/index'
  get '' => 'home#index'

  resources :books
  resources :countries

  get '/check_if_book_title_exists' => 'books#check_if_book_title_exists', as: :check_if_book_title_exists
  get '/similar_books_content' => 'similar_books_content', as: :similar_books_content
end
