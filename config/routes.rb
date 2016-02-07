Rails.application.routes.draw do
  get 'user/index'

  get 'user/new'

  get 'user/create'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: "log_entries#new"
  resources :log_entries
  resources :users do 
    member do 
      post :toggle_admin
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
