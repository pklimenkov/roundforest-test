Rails.application.routes.draw do
  resources :books, only: [:index]
  resources :articles, only: [:index]

  get 'books/prime', to: 'books#prime'
  get 'search/filter', to: 'search#filter'
  post 'search/filter', to: 'search#find'
  get 'lists/books', to: 'lists#books'
end
