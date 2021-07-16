Rails.application.routes.draw do
  # resources :messages
  # resources :conversations
  resources :users, only: [:show, :create]

  Rails.application.routes.draw do
    resources :conversations, only: [:index, :create]
    resources :messages, only: [:create]
    mount ActionCable.server => '/cable'
  end

end
