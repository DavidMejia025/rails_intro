Rails.application.routes.draw do
  # get '/', to: "pages#home"
  root "pages#home"


  # Rutas de Book
  resources :authors
  resources :books


  # get '/books', to: "books#index"

  # get '/books/new', to: "books#new", as: "new_book"

  # get '/books/:id', to: "books#show", as: "book"

  # get '/books/:id/edit', to: "books#edit", as: "edit_book"

  # patch '/books/:id', to: "books#update", as: "update_book"

  # delete '/books/:id', to: "books#destroy"

  # post '/books', to: "books#create"

  # Rutas de Author

  # get '/authors/:id', to: "authors#show", as: "author"

  # get 'books/show'

  # get 'books/new'

  # get 'books/edit'

  # get 'books/update'

  # get 'books/create'

  # get 'books/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
