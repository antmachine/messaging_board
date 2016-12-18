Rails.application.routes.draw do
  get    'posts/index',         to: 'post#index',      as: 'posts_path'
  get    'post/index',          to: 'post#index',      as: 'post_path'
  get    'post/new',            to: 'post#new',        as: 'post_new_path'
  post   'post/create',         to: 'post#create',     as: 'post_create_path'
  get    'post/:id',            to: 'post#show',       as: 'post_show_path'
  put    'post/:id',            to: 'post#update',     as: 'post_update_path'
  patch  'post/:id',            to: 'post#update',     as: 'post_patch_path'
  get    'post/:id/edit',       to: 'post#edit',       as: 'edit_post_path'
  get    'post/:id/destroy',    to: 'post#destroy',    as: 'post_destroy_path'
  delete 'post/:id',            to: 'post#destroy',    as: 'post_delete_path'
  get    'comments/index',      to: 'comment#index',   as: 'comments_path'
  get    'comment/index',       to: 'comment#index',   as: 'comment_path'
  get    'comment/new',         to: 'comment#new',     as: 'comment_new_path'
  post   'comment/create',      to: 'comment#create',  as: 'comment_create_path'
  get    'comment/:id',         to: 'comment#show',    as: 'comment_show_path'
  put    'comment/:id',         to: 'comment#update',  as: 'comment_update_path'
  patch  'comment/:id',         to: 'comment#update',  as: 'comment_patch_path'
  get    'comment/:id/edit',    to: 'comment#edit',    as: 'edit_comment_path'
  get    'comment/:id/destroy', to: 'comment#destroy', as: 'comment_destroy_path'
  delete 'comment/:id',         to: 'comment#destroy', as: 'comment_delete_path'

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

  devise_for :users, controllers: { sessions: "sessions" }
  root to: "post#index"
end
