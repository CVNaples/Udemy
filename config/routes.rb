Rails.application.routes.draw do
  resources :resturants
  resources :resturaunts
  get 'pages/about'

  get 'pages/contact'
root 'resturants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
