Rails.application.routes.draw do
  devise_for :users
  get 'tcomments/create'

  get 'tcomments/destroy'

  get 'tcomments/edit'

  get 'tcomments/update'

  get 'lcomments/create'

  get 'lcomments/destroy'

  get 'lcomments/edit'

  get 'lcomments/update'

  get 'fcomments/create'

  get 'fcomments/destroy'

  get 'fcomments/edit'

  get 'fcomments/update'

  get 'fcomments/create'

  get 'fcomments/destroy'

  get 'fcomments/edit'

  get 'fcomments/update'

  get 'comments_location/create'

  get 'comments_location/destroy'

  get 'comments_location/update'

  get 'comments_location/edit'

  get 'comments_thing/create'

  get 'comments_thing/destroy'

  get 'comments_thing/update'

  get 'comments_thing/edit'

  get 'comments_food/create'

  get 'comments_food/destroy'

  get 'comments_food/update'

  get 'comments_food/edit'

  get 'comments/create'

  get 'comments/destroy'

  get 'comments/edit'

  get 'comments/update'

  root 'home#start'
  
  get 'home/index'

  get 'home/new_food'
  
  get 'home/new_location'
  
  get 'home/new_thing'

  post 'home/create_food'
  
  post 'home/create_location'
  
  post 'home/create_thing'
  
  get 'home/destroy_location/:location_id' =>'home#destroy_location'
  
  get 'home/destroy_thing/:thing_id' => 'home#destroy_thing'
  
  get 'home/edit_location/:location_id' => 'home#edit_location'
  
  get 'home/edit_thing/:thing_id' => 'home#edit_thing'
  
  post 'home/update_location/:location_id' => 'home#update_location'
  
  post 'home/update_thing/:thing_id' => 'home#update_thing'
  
  get 'home/show_eat' => 'home#show_eat'
  
  get 'home/show_go' => 'home#show_go'
  
  get 'home/show_do' => 'home#show_do'
  
  get 'home/start'
  
  get 'home/food_detail/:food_id' => 'home#food_detail'
  
  get 'home/location_detail/:location_id' => 'home#location_detail'
  
  get 'home/thing_detail/:thing_id' => 'home#thing_detail'
  
  get 'home/destroy/:food_id' => 'home#destroy_food'
  
  get 'home/edit/:food_id' => 'home#edit_food'
  
  post 'home/update_food/:food_id' => 'home#update_food'
  
  post '/foods/:food_id/fcomments/create' => 'fcomments#create'
  
  get '/foods/:food_id/fcomments/:fcomments_id/destroy' => 'fcomments#destroy'
  
  get '/foods/:food_id/fcomments/:fcomments_id/edit' => 'fcomments#edit'
  
  post '/foods/:food_id/fcomments/:fcomments_id/update' => 'fcomments#update'  
  
  post '/locations/:location_id/lcomments/create' => 'lcomments#create'
  
  get '/locations/:location_id/lcomments/:lcomments_id/destroy' => 'lcomments#destroy'
  
  get '/locations/:location_id/lcomments/:lcomments_id/edit' => 'lcomments#edit'
  
  post '/locations/:location_id/lcomments/:lcomments_id/update' => 'lcomments#update'  
  
  post '/things/:thing_id/tcomments/create' => 'tcomments#create'
  
  get '/things/:thing_id/tcomments/:tcomments_id/destroy' => 'tcomments#destroy'
  
  get '/things/:thing_id/tcomments/:tcomments_id/edit' => 'tcomments#edit'

  post '/things/:thing_id/tcomments/:tcomments_id/update' => 'tcomments#update'

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
