Movielibrary::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  #showMovie控制器的路由配置
  resources :show_movie do
    collection do
      get 'movieView'
      get 'myMovies'
      get 'classView'
    end
  end
  
  #play控制器路由配置
  resources :play do
    collection do
      get 'showAndPlay'
    end
  end

  #registerLogin控制器的路由配置
  resources :register_login do 
    collection do
      get 'show'
      post 'register'
      get 'login'
      post 'checkName'
      post 'checkPassword'
      post 'goindex'
    end
  end
end
