Rails.application.routes.draw do
  mount LetsencryptPlugin::Engine, at: '/'
  root 'rooms#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # During the ActionCable demo on youtube which was running rails 5 beta1
  # the server line below is uncommented out
  # but I looks like this is no longer necessary
  # this snip of code is no longer ship with a beta4 generated application
  # and it works without.

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
