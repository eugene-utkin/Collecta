Rails.application.routes.draw do
  get 'countries/index'
   get '' => 'home#index'

   resources :books
end
