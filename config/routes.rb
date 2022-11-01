Rails.application.routes.draw do


# 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  # root to: 'homes#top'
  root to: "homes#about"
  get "homes/about"

  #管理者用
  namespace :admin do
    #会員
    resources :customers, only: [:index, :show, :edit, :update, :destroy]

  end




  # ユーザー用
   scope module: :public do


     #ゲストハウス
     resources :guesthouses, only: [:index, :new, :show, :create] do
       resources :guesthouse_reviews, only: [:index, :create, :new, :edit, :update, :destroy] #ゲストハウス
     end

     #レストラン
    resources :restaurants, only: [:index, :new, :show, :create] do
      resources :restaurant_reviews, only: [:index, :create, :new, :edit, :update, :destroy]#レストラン
     end

     #アクティビティ
     resources :activities, only: [:index, :new, :show, :create] do
      resources :activity_reviews, only: [:index, :create, :new, :edit, :update, :destroy]#アクティビティ
     end



    #顧客
    resources :customers, only: [:index, :edit, :update, :show]
    get 'customers/:id/confirmation' => "customers#confirmation", as: "confirmation"
    patch 'customers/:id/withdrawal' => "customers#withdrawal", as: "withdrawal"

    #国選択
    resources :countries, only: [:index, :create, :show] do
      resources :guesthouses, only: [:index]
      resources :restaurants, only: [:index]
      resources :activities, only: [:index]
    end
    get 'country_search', to: 'countries#search'

    #選択画面
    resources :options, only: [:index, :create]




   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end