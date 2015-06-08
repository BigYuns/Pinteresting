Rails.application.routes.draw do

<<<<<<< HEAD


  devise_for :users, :path => 'accounts'


=======
  devise_for :users, :path => 'accounts'
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
  resources :users do
  	resources :boards do
  		resources :pins
  	end
  end
  root 'users#index'
end
