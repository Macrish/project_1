Rails.application.routes.draw do
  resources :events
	root 'welcome#index'
	
	# get 'welcome/show'
	#match without methods -> ArgumentError
	# match 'welcome/show'


	# DRY
	scope path: '/welcome', controller: :welcome do
		get 'show', to: :show
		#redirect_to google
		get 'index', to: redirect('https://google.com/')
	end

	#hard code
	# match 'welcome/show', to: 'welcome#show', via: [:get]


	get '/:locale', to: 'welcome#index'

	# get "/hello", to: proc { |env| [200, {}, ["Hello world"]] }

	# resources :auctions do
	# 	resources :bids
	# 	resources :comments
	# 	resources :image_attachments, only: :index
	# end
	
	# resources :bids do
	# 	resources :comments
	# end

	#To eliminate code duplication and to encapsulate shared behavior add concern
	# concern :commentable do
	# 	resources :comments
	# end

	# concern :image_attachable do
	# 	resources :image_attachments, only: :index
	# end

	# resources :auctions, concerns: [:commentable, :image_attachable] do
	# 	resources :bids
	# end

	# resources :bids, concerns: :commentable
	# /projects/nuevo(.:format)
	# resources :projects, path_names: { new: 'nuevo', edit: 'cambiar' }
	# images#index
	# resources :photos, controller: "images"
end