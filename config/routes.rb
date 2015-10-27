Kidstack::Application.routes.draw do
  

  devise_for :users
  

  get "static_pages/characters"
  resources :sections
  resources :questions
  resources :catagories do
    member do
      get 'quiz'
      get 'question'
      get 'quiz_check_answer'
      get 'quiz_next_question'
      get 'answer'
      get 'game'
    end    
  end

  resources :topics do
    member do
      get 'activity'
      get 'quiz'
      get 'quiz_right_answer'
      get 'quiz_check_answer'
      get 'quiz_wrong_answer'
      get 'quiz_next_question'
      get 'answer'
      get 'learnmore'
    end
  end

  match '/news', to: 'catagories#news', via: 'get'
  match '/projects', to: 'catagories#projects', via: 'get'
  
  match '/characters', to: 'static_pages#characters', via: 'get'
  match '/products', to: 'static_pages#pricelist', via: 'get'
  match '/puzzles', to: 'catagories#puzzles', via: 'get'
  match '/morseproj', to: 'static_pages#morseproj', via: 'get'
  match '/magazine', to: 'catagories#magazine', via: 'get'

      
  root 'catagories#index'
 
 
#resources :catagories, only: [:index, :show]
  
#devise_scope :user do
 #   match '/sign-in' => "devise/session#{new}", :as => :login
 # end
  

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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
