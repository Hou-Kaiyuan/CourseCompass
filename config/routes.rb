CourseCompass::Application.routes.draw do
  resources :courses

  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"

  # map '/' to be a redirect to '/courses'
  root :to => redirect('/courses')
end
