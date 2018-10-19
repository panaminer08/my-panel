Rails.application.routes.draw do
  devise_for :users
  root "students#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  resources :cohorts
  resources :instructors
  resources :courses
  resources :student_cohorts
end
