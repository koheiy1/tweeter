Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
    collection do   #search_tweets  GET  /tweets/search(.:format) ルーティングに:idがつかないのでcollection　逆にmemberは:idがつく。
      get 'search'
    end
  end
  resources :users, only: :show
end
