class WelcomeController < ApplicationController
  def index
  	# check debbuger 'byebug'
  	# byebug

  	#web-consele exsecute Ruby code
  	# console

    #COOL CODE
  	flash[:notice] = t(:hello_flash)

    #HARD CODE
    flash[:notice] = "hard code"


  	#logger info
  	# logger.info "Processing the request..."
  	# logger.fatal "Terminating application, raised unrecoverable error!!!"
  	
  	# tagged logging
    # logger = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))
		# logger.tagged("BCX") { logger.info "Stuff" }
		# logger.tagged("BCX", "Jason") { logger.info "Stuff" }         
		# logger.tagged("BCX") { logger.tagged("Jason") { logger.info "Stuff" } }
		
		# aaa = "Tanyaaaaaaaaaa"
		#0.1s
		# logger.debug "Person attributes hash: #{aaa}"
		#0.0s more productive
		# logger.debug { "Person attributes hash: #{aaa}" }
  end

  def show
    # render text
    # render plain: 'Submission accepted'
    # redirect_to "http://www.rubyonrails.org"
  end
end
