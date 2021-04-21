Rails.application.routes.draw do
   get '' => 'home#index'

   resources :books
end
