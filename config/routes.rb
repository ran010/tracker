Rails.application.routes.draw do
  resources :readings, only: %i[index create new]
  devise_for :users

  root 'readings#index'
end
