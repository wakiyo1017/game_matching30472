Rails.application.routes.draw do
  root to: 'playings#index'
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
