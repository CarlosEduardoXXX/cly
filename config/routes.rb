Rails.application.routes.draw do
  get 'companys/index'

  resources :people, :companys

  root 'companys#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
