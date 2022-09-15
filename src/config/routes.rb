Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/color',    to: 'static_pages#color'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new' # 新しいセッションのページ（ログイン）
  post   '/login',   to: 'sessions#create' # 新しいセッションの作成（ログイン）
  delete '/logout',  to: 'sessions#destroy' # セッションの削除（ログアウト）
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  
  resources :pokemons
  resources :eqps

  # GETリクエストが /signup に送信されたときに
  # Usersコントローラーのnewアクションを呼び出す
  # 名前付きルートは signup_path
  # get  '/signup',  to: 'users#new'
end
