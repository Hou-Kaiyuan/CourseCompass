CourseCompass::Application.routes.draw do
  resources :courses do
    post 'add_to_enrolled', on: :member
  end

  resources :users, param: :uid do
    resources :course_enrollments, only: [:new, :create, :edit, :update]
  end
  
  # The rest of your existing routes
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  get "profiles", to: "profiles#show"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get '/users/:id/recommendations', to: 'users#recommendations', as: 'user_recommendations'

  # map '/' to be a redirect to '/courses'
  root to: redirect('/courses')
end
