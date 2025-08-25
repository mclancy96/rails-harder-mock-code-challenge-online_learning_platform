Rails.application.routes.draw do
  resources :users do
    resources :enrollments, only: [:index, :create, :update, :destroy]
  end
  resources :courses do
    resources :lessons, only: [:index, :show, :create, :update, :destroy]
    resources :enrollments, only: [:index, :create, :update, :destroy]
  end
  resources :lessons, only: [:show]
  resources :enrollments, only: [:show]
end
