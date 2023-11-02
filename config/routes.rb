Rottenpotatoes::Application.routes.draw do
  resources :courses
  # map '/' to be a redirect to '/courses'
  root :to => redirect('/courses')
end
