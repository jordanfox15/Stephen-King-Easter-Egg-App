class RepeatersController < ApplicationController

	# def index
	# 	@repeaters = Repeater.all
	# 	render json: @repeaters
	# end

	def show
		@repeater = Repeater.find(params[:id])
		@books = @repeater.books
		@associations = @repeater.associations
		render json: {books: @books, repeater: @repeater, associations: @associations}
	end

	def characters
		@characters = Repeater.where(category: 'character')
		render json: @characters
	end

	def locations
		@locations = Repeater.where(category: 'location')
		render json: @locations
	end

end
