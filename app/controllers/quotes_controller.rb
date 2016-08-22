class QuotesController < ApplicationController
	
	def index
		@quotes = Quote.all
	end
	
	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(quotes_params)

		if(@quote.save)
			redirect_to '/'
		else
			redirect_to 'new'
		end
	end	

	def destroy
		@quote = Quote.find(params[:id])
		@quote.destroy
		redirect_to '/'
	end

	def edit
		@quote = Quote.find(params[:id])
	end

	def update
		@quote = Quote.find(params[:id])

		if @quote.update_attributes(quotes_params)
			redirect_to '/'
		else
			redirect_to 'edit'
		end
	end


	private 
		def quotes_params
			params.require(:quote).permit(:autor, :texto)
		end
end
