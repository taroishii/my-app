Rails.application.routes.draw do
  root to: 'lectures#index'
  
  resources :lectures
  resources :lecturers,only: [:new,:create]
  resources :lecture_names,only: [:new,:create]
  resources :kinds,only: [:new,:create]
  
end
