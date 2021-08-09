Rails.application.routes.draw do
  get 'permissions/new'
  get 'times/new'
  get 'vacation/new'
  root to: 'home#index'
  get '/works/new', to: 'works#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
