Rails.application.routes.draw do
  get 'pages/dashboard'
  get 'pages/form'
  get 'pages/create'

  root 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
