Rails.application.routes.draw do



  devise_for :users, :path => 'accounts'


  resources :users do
  	resources :boards
  end

  root 'users#index'
end
