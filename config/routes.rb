Rails.application.routes.draw do
  devise_for :users
  #devise_for :users
  # devise_for :users
  get '/' => 'users#home',as:"home"
  get "about" => "users#about",as:"about"
  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:create, :show, :edit, :destroy, :update, :index]
  # get "users/:id" => "books#index",as:"index"
  # get "users/sign_up" => "users#sign_up",as:"new"
  # get "users/sign_in" => "users#sign_in",as:"new2"
  # post "users" => "books#create"
  # post "books" => "books#create"
  # get "books/:id/detail" => "books#detail",as:"detail"
  # get "books/:id/users" => "books#user",as:"user"
  # get "books/:id/books" => "books#book",as:"book"
  # get 'books/:id' => 'posts#show',as:"show_book"
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # get "users/:id/edit" => "users#edit"
end

