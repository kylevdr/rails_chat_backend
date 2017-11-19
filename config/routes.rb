Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'

  scope 'api' do
    resources :messages, only: [:index, :create, :show]
    resources :chatrooms, only: [:index, :create, :destroy]
  end
  
end
