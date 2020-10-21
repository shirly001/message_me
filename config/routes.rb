Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'

  #add route to action cable 
  #for chatroom channel to take place
  #mount data transmission, web socket connection
  mount ActionCable.server, at: '/cable'
end
