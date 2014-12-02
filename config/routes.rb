Rails.application.routes.draw do

  root 'home#homepage'
  # Routes for the Offer resource:
  # CREATE
  get('/offers/new', { :controller => 'offers', :action => 'new' })
  get('/create_offer', { :controller => 'offers', :action => 'create' })

  # READ
  get('/offers', { :controller => 'offers', :action => 'index' })
  get('/offers/:id', { :controller => 'offers', :action => 'show' })

  # UPDATE
  get('/offers/:id/edit', { :controller => 'offers', :action => 'edit' })
  get('/update_offer/:id', { :controller => 'offers', :action => 'update' })

  # DELETE
  get('/delete_offer/:id', { :controller => 'offers', :action => 'destroy' })
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get('/items/new', { :controller => 'items', :action => 'new' })
  get('/create_item', { :controller => 'items', :action => 'create' })

  # READ
  get('/items', { :controller => 'items', :action => 'index' })
  get('/items/:id', { :controller => 'items', :action => 'show' })

  # UPDATE
  get('/items/:id/edit', { :controller => 'items', :action => 'edit' })
  get('/update_item/:id', { :controller => 'items', :action => 'update' })

  # DELETE
  get('/delete_item/:id', { :controller => 'items', :action => 'destroy' })
  #------------------------------

  # Routes for the List resource:
  # CREATE
  get('/lists/new', { :controller => 'lists', :action => 'new' })
  get('/create_list', { :controller => 'lists', :action => 'create' })

  # READ
  get('/lists', { :controller => 'lists', :action => 'index' })
  get('/lists/:id', { :controller => 'lists', :action => 'show' })

  # UPDATE
  get('/lists/:id/edit', { :controller => 'lists', :action => 'edit' })
  get('/update_list/:id', { :controller => 'lists', :action => 'update' })

  # DELETE
  get('/delete_list/:id', { :controller => 'lists', :action => 'destroy' })
  #------------------------------

  devise_for :users
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
