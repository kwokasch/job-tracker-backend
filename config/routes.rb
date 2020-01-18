Rails.application.routes.draw do
  resources :users, only: [:index, :create, :update, :destroy]
  resources :jobs, only: [:index, :show, :create, :update, :destroy]
  resources :job_trackers, only: [:index, :show, :create, :update, :destroy]
  resources :job_notes, only: [:index, :show, :create, :update, :destroy]
end
