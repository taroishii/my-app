Rails.application.routes.draw do
  root to: 'lectures#index'
  get 'lecturers', to: 'lecturers#index'
  get 'lecture_names', to: 'lecture_names#index'
  
  resources :lectures
  resources :lecturers,only: [:index,:show,:new,:create]
  resources :lecture_names,only: [:index,:show,:new,:create]
  resources :kinds,only: [:index,:show,:new,:create]
  
  
end
