Rails.application.routes.draw do
	root 'welcome#index'

	# get 'welcome/show'
	#match without methods -> ArgumentError
	# match 'welcome/show'
	match 'welcome/show', to: 'welcome#show', via: [:get]

	get '/:locale', to: 'welcome#index'

	resources :posts
	# http://localhost:3000/?locale=pirate to switch languages
 #  scope "/:locale" do
 #  	get 'welcome/index'
	# end
 end
