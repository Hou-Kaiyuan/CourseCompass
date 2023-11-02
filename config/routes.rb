Rottenpotatoes::Application.routes.draw do
  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :courses

  # map '/' to be a redirect to '/courses'
  root :to => redirect('/courses')
end
