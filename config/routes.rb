Rails.application.routes.draw do
	root 'welcome#index'
	#redirect_to google
	get 'welcome/index', to: redirect('https://google.com/')
	# get 'welcome/show'
	#match without methods -> ArgumentError
	# match 'welcome/show'
	match 'welcome/show', to: 'welcome#show', via: [:get]
	get '/:locale', to: 'welcome#index'

	resources :posts
	# http://localhost:3000/?locale=pirate to switch languages
 #  scope "/:locale" do
 #  	get 'welcome/index'
 #end

	get "/hello", to: proc { |env| [200, {}, ["Hello world"]] }
end