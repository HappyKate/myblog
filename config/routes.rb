Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  get 'about' => 'pages', as: 'about'
  root 'posts#index', as: 'home'
  resources :posts do
    resources :comments
  end
end
