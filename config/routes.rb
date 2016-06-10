Rails.application.routes.draw do
  get 'work/timezones'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount LetsencryptPlugin::Engine, at: '/'
  root 'work#timezones'
  get 'chat' => 'rooms#welcome'
  resources :rooms


  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
