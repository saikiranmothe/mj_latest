Mj::Application.routes.draw do
 
  resources :videos


  resources :kuldevi_mata


  resources :gotras


## Application Root redirected to 
## STATIC_SITE/ABOUT PAGE !
root :to => 'static_site#about'


  resources :events




  # STATIC PAGES ROUTES
  #####################
  # Add All static page routes here
  # If Any one adds static page create action in -- static_site controller
  # create view file in app/views/_newfilename.html.erb
  # Define a route method(get method) Here in routes.rb
  ######################################################################
  # PAGES >> aboutpage,contact,terms_conditions,privacy,policy,rajasthan
  # PAGES >> demo_family,festivals,godwisekuldevi,gotra,kuldevis  details
  # PAGES >> surnamewisekuldevi,mjblog,serach,team,follow_us,maheshwari_origin

  get "static_site/maheshwari_origin"
  match '/maheshwari',   to: 'static_site#maheshwari_origin',   via: 'get'
  
  get "static_site/about"
  match '/about',   to: 'static_site#about',   via: 'get'

  get "static_site/contact_us"
  match '/contact', to: 'static_site#contact_us', via: 'get'

  get "static_site/terms_conditions"
  match '/terms_conditions', to: 'static_site#terms_conditions', via: 'get'

  get "static_site/privacy_policy"
  match '/privacy_policy', to: 'static_site#privacy_policy', via: 'get'

  get "static_site/rajasthan"
  match '/rajasthan', to: 'static_site#rajasthan', via: 'get'

  get "static_site/demo_family"
  match '/demo_family', to: 'static_site#demo_family', via: 'get'

  get "static_site/festivals"
  match '/festivals', to: 'static_site#festivals', via: 'get'

  get "static_site/godwisekuldevi"
  match '/godwisekuldevi', to: 'static_site#godwisekuldevi', via: 'get'

  get "static_site/gotra"
  match '/gotra', to: 'static_site#gotra', via: 'get'

  get "static_site/kuldevisedetails"
  match '/kuldevisedetails', to: 'static_site#kuldevisedetails', via: 'get'

  get "static_site/surnamewisekuldevi"
  match '/surnamewisekuldevi', to: 'static_site#surnamewisekuldevi', via: 'get'

  get "static_site/mjblog"
  match '/mjblog', to: 'static_site#mjblog', via: 'get'

  get "static_site/serach"
  match '/serach', to: 'static_site#serach', via: 'get'

  get "static_site/follow_us"
  match '/follow_us', to: 'static_site#follow_us', via: 'get'

  get "static_site/team"
  match '/team',    to: 'static_site#team',    via: 'get'

  get "static_site/traditions"
  match '/traditions',    to: 'static_site#traditions',    via: 'get'


  ##############################################################################
  # STATIC PAGES ROUTES

  #Devise Routes // Authentication
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
