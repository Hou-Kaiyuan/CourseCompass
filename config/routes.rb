Rottenpotatoes::Application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :courses
  # map '/' to be a redirect to '/courses'
  root :to => redirect('/courses')
end
