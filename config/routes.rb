Rails.application.routes.draw do
  devise_for :users
  constraints subdomain: /.*/ do
    resources :articles
  end

  root to: "authors#index"

  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
