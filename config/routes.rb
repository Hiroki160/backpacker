Rails.application.routes.draw do


  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
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

  root to: 'homes#top'
  get "homes/about"

  # ユーザー用
   scope module: :public do


     #ゲストハウス
     resources :guesthouses, only: [:index, :new, :show, :create] do
       resources :guesthouse_reviews, only: [:index, :create, :new] #ゲストハウス
      end

    #顧客
    resources :customers, only: [:index, :edit, :update, :show]
    get 'customers/confirmation'
    patch 'customers/withdrawal'

    #国選択
    resources :places, only: [:index, :create]

    #選択画面
    resources :options, only: [:index, :create]




   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
