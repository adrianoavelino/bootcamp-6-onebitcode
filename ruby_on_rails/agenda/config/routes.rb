Rails.application.routes.draw do
  get 'address/number'
  get 'pages/home'
  resources :contacts

  root 'pages#home'
end
