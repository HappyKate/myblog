Rails.application.routes.draw do
  get 'about' => 'pages', as: 'about'
  root 'posts#index', as: 'home'
  resources :posts do
    resources :comments
  end
end
