Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  get 'permissions/new'
  get 'times/new'
  get 'vacation/new'
  get '/works/new'

  resources :type_vacations
  resources :type_requests
  resources :reason_permissions
  resources :type_permissions
end
