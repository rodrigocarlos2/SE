Rails.application.routes.draw do
  resources :states
  resources :knowledges

  root to: 'knowledges#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
