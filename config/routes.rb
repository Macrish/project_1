Rails.application.routes.draw do
	root 'welcome#index'
	#redirect_to google
	get 'welcome/index', to: redirect('https://google.com/')
	# get 'welcome/show'
	#match without methods -> ArgumentError
	# match 'welcome/show'
	



	# DRY
	scope path: '/welcome', controller: :welcome do
		get 'show', to: :show
	end

	#hard code
	# match 'welcome/show', to: 'welcome#show', via: [:get]





	get '/:locale', to: 'welcome#index'

	resources :posts
	# http://localhost:3000/?locale=pirate to switch languages
 #  scope "/:locale" do
 #  	get 'welcome/index'
 #end

	get "/hello", to: proc { |env| [200, {}, ["Hello world"]] }

	# resources :auctions do
	# 	resources :bids
	# 	resources :comments
	# 	resources :image_attachments, only: :index
	# end
	
	# resources :bids do
	# 	resources :comments
	# end
	
	#To eliminate code duplication and to encapsulate shared behavior add concern
	concern :commentable do
		resources :comments
	end

	concern :image_attachable do
		resources :image_attachments, only: :index
	end

	resources :auctions, concerns: [:commentable, :image_attachable] do
		resources :bids
	end

	resources :bids, concerns: :commentable
end