Rooster::Engine.routes.draw do
  namespace :rooster do
  end

  namespace :admin do
    resources :pages, :posts, :filemanager
    get 'dashboard' => "dashboard#index", as: 'dashboard_index'
  end
end
