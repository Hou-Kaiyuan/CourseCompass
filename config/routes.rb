CourseCompass::Application.routes.draw do

  resources :courses do
    post 'add_to_enrolled', on: :member
  end
  resources :user

  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  get "profiles", to: "profiles#show"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # map '/' to be a redirect to '/courses'
  root :to => redirect('/courses')
end
