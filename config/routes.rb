Rails.application.routes.draw do
  devise_for :users
  root to: 'divisions#index'


  resources :divisions do
    resources :employees
  end

  resources :projects

end
