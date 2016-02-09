require 'rails/application'

module RouteScoper
  # Keep the rescue so that you can revert to not having a
  #   # subdirectory when in development and test modes
  def self.root
    Rails.application.config.root_directory
  rescue NameError
    '/'
  end
end

Rails.application.routes.draw do
  scope RouteScoper.root do
    get 'index.html', to: 'log_entries#new'
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
end
