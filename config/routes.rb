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

    #国選択
    resources :countries, only: [:index, :show] do
      resources :guesthouses, only: [:index]
      resources :restaurants, only: [:index]
      resources :activities, only: [:index]
    end

    #ゲストハウス
    resources :guesthouses, only: [:index, :show, :destroy] do
      resources :guesthouse_reviews, only: [:index, :update, :destroy, :show] do
        resources :guesthouse_comments, only: [:index, :destroy]
      end
    end

    #レストラン
    resources :restaurants, only: [:index, :show, :destroy] do
      resources :restaurant_reviews, only: [:index, :update, :destroy] do
        resources :restaurant_comments, only: [:index, :destroy]
      end
    end

    #アクティビティ
    resources :activities, only: [:index, :show, :destroy] do
      resources :activity_reviews, only: [:index, :update, :destroy] do
        resources :activity_comments, only: [:index, :destroy]
      end
    end

    #検索
    get 'country_search', to: 'countries#search'

  end




  # ユーザー用
   scope module: :public do

     #ゲストハウス
     resources :guesthouses, only: [:index, :new, :show, :create] do
       resources :guesthouse_reviews, only: [:index, :create, :new, :edit, :update, :destroy, :show] do
        resources :guesthouse_comments, only: [:create, :destroy, :index]
      end
    end

    #ゲストハウスコミュニティ機能
    resources :guesthouses, only: [:index, :new, :show, :create] do
      resources :guesthouse_communities, only: [:index, :create, :show, :destroy, :edit, :update, :new]
    end

    #ゲストハウスコミュニティ詳細
    resources :guesthouses do
      resources :customers do
        resources :guesthouse_communities, only: [:show]
      end
    end

    #ゲストハウスコミュニティ申請画面
    resources :guesthouse_communities, only: [:index, :create, :show, :destroy, :edit, :update, :new] do
      resources :guesthouse_applies, only: [:show, :create, :update, :destroy]
    end

    #マイページから申請中のゲストハウスへ
    resources :guesthouse_applies, only: [:show]

    #ゲストハウスコミュニティ掲示板
    resources :guesthouse_communities do
      resources :guesthouse_community_comments, only: [:index, :create, :destroy]
    end

    #レストランコミュニティ機能
    resources :restaurants, only: [:index, :new, :show, :create] do
      resources :restaurant_communities, only: [:index, :create, :show, :destroy, :edit, :update, :new]
    end

    #レストランコミュニティ詳細
    resources :restaurants do
      resources :customers do
        resources :restaurant_communities, only: [:show]
      end
    end

    #レストランコミュニティ申請画面
    resources :restaurant_communities, only: [:index, :create, :show, :destroy, :edit, :update, :new] do
      resources :restaurant_applies, only: [:show, :create, :update, :destroy]
    end

    #マイページから申請中のレストランへ
    resources :restaurant_applies, only: [:show]

    #レストランコミュニティ掲示板
    resources :restaurant_communities do
      resources :restaurant_community_comments, only: [:index, :create, :destroy]
    end

     #レストラン
    resources :restaurants, only: [:index, :new, :show, :create] do
      resources :restaurant_reviews, only: [:index, :create, :new, :edit, :update, :destroy] do
        resources :restaurant_comments, only: [:create, :destroy, :index]
       end
     end

     #アクティビティ
     resources :activities, only: [:index, :new, :show, :create] do
      resources :activity_reviews, only: [:index, :create, :new, :edit, :update, :destroy] do
        resources :activity_comments, only: [:create, :destroy, :index]
       end
     end

    #アクティビティコミュニティ機能
    resources :activities, only: [:index, :new, :show, :create] do
      resources :activity_communities, only: [:index, :create, :show, :destroy, :edit, :update, :new]
    end

    #アクティビティコミュニティ詳細
    resources :activities do
      resources :customers do
        resources :activity_communities, only: [:show]
      end
    end

    #アクティビティコミュニティ申請画面
    resources :activity_communities, only: [:index, :create, :show, :destroy, :edit, :update, :new] do
      resources :activity_applies, only: [:show, :create, :update, :destroy]
    end

     #アクティビティコミュニティ掲示板
    resources :activity_communities do
      resources :activity_community_comments, only: [:index, :create, :destroy]
    end

    #マイページから申請中のアクティビティへ
    resources :activity_applies, only: [:show]


     #投稿
     resources :posts



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

    get 'map/map'




   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end