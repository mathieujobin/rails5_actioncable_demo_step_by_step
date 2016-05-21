Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount LetsencryptPlugin::Engine, at: '/'
  root 'rooms#welcome'
  resources :rooms


  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
