Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  resources :blogs do
    post 'like'
    delete 'unlike'
  end
  scope '/web' do
    get 'bootstrap', to: 'web#bootstrap'
  end
  resources :users, only: [:create]
end
