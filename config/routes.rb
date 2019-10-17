Rails.application.routes.draw do
	root 'welcome#index'
	get 'welcome/index'
	get '/:locale', to: 'welcome#index'
	# http://localhost:3000/?locale=pirate to switch languages
 #  scope "/:locale" do
 #  	get 'welcome/index'
	# end
 end
