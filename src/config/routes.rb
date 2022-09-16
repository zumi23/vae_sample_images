Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'vaes#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
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

  get  '/real_img_sample',    to: 'vaes#real_image_sample'
  get  '/gen_img_sample',    to: 'vaes#generated_image_sample'
  get  '/repara',    to: 'vaes#repara'
  get  '/nz_mapping',    to: 'vaes#nz_mapping'
  get  '/compare_images',    to: 'vaes#compare_images'

  # GETリクエストが /signup に送信されたときに
  # Usersコントローラーのnewアクションを呼び出す
  # 名前付きルートは signup_path
  # get  '/signup',  to: 'users#new'
end
