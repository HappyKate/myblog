Rails.application.routes.draw do
  get 'about' => 'pages'
  root 'posts#index'
  resource :posts
end
