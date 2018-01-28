Rails.application.routes.draw do
  resources :bills_politicians
  resources :bills
  resources :politicians
  resources :polls_users
  resources :polls
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
