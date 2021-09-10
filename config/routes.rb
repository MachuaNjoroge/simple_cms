Rails.application.routes.draw do

  root 'demo#index'

  # Provides the seven default CRUD methods and then we add delete method
  resources :subjects do
    member do
      get:delete
    end
  end

  get 'demo/index'
  get 'demo/hello'
  get 'demo/lynda'

  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
