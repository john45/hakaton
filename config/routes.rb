# frozen_string_literal: true

Rails.application.routes.draw do
  get 'recepts/create'

  get 'bookmarks/create'

  root to: 'static#home'
  get 'static/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('static#do_fail')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  resources :bookmarks
  resources :categories, only: %i[create destroy]
end
